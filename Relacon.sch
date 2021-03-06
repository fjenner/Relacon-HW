EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "Relacon Relay Controller"
Date "2020-11-26"
Rev "1"
Comp ""
Comment1 ""
Comment2 "creativecommons.org/licenses/by/4.0"
Comment3 "License: CC BY 4.0"
Comment4 "Author: Frank Jenner"
$EndDescr
$Comp
L MCU_ST_STM32F0:STM32F042K6Tx U1
U 1 1 5FBF0B22
P 1850 4050
F 0 "U1" H 1500 4900 50  0000 C CNN
F 1 "STM32F042K6Tx" H 2250 3100 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 1450 3150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00105814.pdf" H 1850 4050 50  0001 C CNN
F 4 "C69216" H 1850 4050 50  0001 C CNN "LCSC"
	1    1850 4050
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5FBF428A
P 3250 1150
F 0 "U2" H 3100 1300 50  0000 C CNN
F 1 "AMS1117-3.3" H 3550 900 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3250 1350 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 3350 900 50  0001 C CNN
F 4 "C6186" H 3250 1150 50  0001 C CNN "LCSC"
	1    3250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FBF5911
P 3250 1650
F 0 "#PWR0101" H 3250 1400 50  0001 C CNN
F 1 "GND" H 3255 1477 50  0000 C CNN
F 2 "" H 3250 1650 50  0001 C CNN
F 3 "" H 3250 1650 50  0001 C CNN
	1    3250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5FBF6792
P 4050 1650
F 0 "#PWR0102" H 4050 1400 50  0001 C CNN
F 1 "GND" H 4055 1477 50  0000 C CNN
F 2 "" H 4050 1650 50  0001 C CNN
F 3 "" H 4050 1650 50  0001 C CNN
	1    4050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1450 3250 1650
$Comp
L Device:C C2
U 1 1 5FBF7627
P 4050 1400
F 0 "C2" H 4165 1446 50  0000 L CNN
F 1 "22uF" H 4165 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4088 1250 50  0001 C CNN
F 3 "~" H 4050 1400 50  0001 C CNN
F 4 "C45783" H 4050 1400 50  0001 C CNN "LCSC"
	1    4050 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FBF84AA
P 2600 1400
F 0 "C1" H 2715 1446 50  0000 L CNN
F 1 "47uF" H 2715 1355 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2638 1250 50  0001 C CNN
F 3 "~" H 2600 1400 50  0001 C CNN
F 4 "C96123" H 2600 1400 50  0001 C CNN "LCSC"
	1    2600 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1
U 1 1 5FBF952C
P 1150 1100
F 0 "J1" H 1000 1450 50  0000 C CNN
F 1 "USB_B" H 1350 700 50  0000 C CNN
F 2 "Connector_USB:USB_B_Lumberg_2411_02_Horizontal" H 1300 1050 50  0001 C CNN
F 3 " ~" H 1300 1050 50  0001 C CNN
	1    1150 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5FC0284C
P 2600 1650
F 0 "#PWR0103" H 2600 1400 50  0001 C CNN
F 1 "GND" H 2605 1477 50  0000 C CNN
F 2 "" H 2600 1650 50  0001 C CNN
F 3 "" H 2600 1650 50  0001 C CNN
	1    2600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1550 2600 1650
Wire Wire Line
	4050 1550 4050 1650
Wire Wire Line
	2600 1250 2600 1150
Wire Wire Line
	2600 1150 2950 1150
Wire Wire Line
	3550 1150 4050 1150
Wire Wire Line
	4050 1150 4050 1250
Connection ~ 2600 1150
Connection ~ 4050 1150
Wire Wire Line
	2600 850  2600 1150
$Comp
L power:+5V #PWR0104
U 1 1 5FC03FD1
P 2600 850
F 0 "#PWR0104" H 2600 700 50  0001 C CNN
F 1 "+5V" H 2615 1023 50  0000 C CNN
F 2 "" H 2600 850 50  0001 C CNN
F 3 "" H 2600 850 50  0001 C CNN
	1    2600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 850  4050 1150
$Comp
L power:+3V3 #PWR0105
U 1 1 5FC05263
P 4050 850
F 0 "#PWR0105" H 4050 700 50  0001 C CNN
F 1 "+3V3" H 4065 1023 50  0000 C CNN
F 2 "" H 4050 850 50  0001 C CNN
F 3 "" H 4050 850 50  0001 C CNN
	1    4050 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5FC11D3E
P 1150 1700
F 0 "#PWR0106" H 1150 1450 50  0001 C CNN
F 1 "GND" H 1155 1527 50  0000 C CNN
F 2 "" H 1150 1700 50  0001 C CNN
F 3 "" H 1150 1700 50  0001 C CNN
	1    1150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1500 1150 1600
Wire Wire Line
	1050 1500 1050 1600
Wire Wire Line
	1050 1600 1150 1600
Connection ~ 1150 1600
Wire Wire Line
	1150 1600 1150 1700
Text GLabel 1750 1100 2    50   BiDi ~ 0
USB_D+
Text GLabel 1750 1200 2    50   BiDi ~ 0
USB_D-
Wire Wire Line
	1450 1100 1750 1100
Wire Wire Line
	1450 1200 1750 1200
$Comp
L power:+5V #PWR0107
U 1 1 5FC13FC3
P 1600 800
F 0 "#PWR0107" H 1600 650 50  0001 C CNN
F 1 "+5V" H 1615 973 50  0000 C CNN
F 2 "" H 1600 800 50  0001 C CNN
F 3 "" H 1600 800 50  0001 C CNN
	1    1600 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 900  1600 900 
Wire Wire Line
	1600 900  1600 800 
$Comp
L power:+3V3 #PWR0108
U 1 1 5FC16ABE
P 1850 2850
F 0 "#PWR0108" H 1850 2700 50  0001 C CNN
F 1 "+3V3" H 1865 3023 50  0000 C CNN
F 2 "" H 1850 2850 50  0001 C CNN
F 3 "" H 1850 2850 50  0001 C CNN
	1    1850 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3150 1850 2950
Wire Wire Line
	1750 3150 1750 2950
Wire Wire Line
	1750 2950 1850 2950
Connection ~ 1850 2950
Wire Wire Line
	1850 2950 1850 2850
Wire Wire Line
	1950 3150 1950 2950
Wire Wire Line
	1950 2950 1850 2950
$Comp
L power:+3V3 #PWR0109
U 1 1 5FC18571
P 800 2850
F 0 "#PWR0109" H 800 2700 50  0001 C CNN
F 1 "+3V3" H 815 3023 50  0000 C CNN
F 2 "" H 800 2850 50  0001 C CNN
F 3 "" H 800 2850 50  0001 C CNN
	1    800  2850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC1919D
P 800 3100
F 0 "R1" H 870 3146 50  0000 L CNN
F 1 "10k" H 870 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 730 3100 50  0001 C CNN
F 3 "~" H 800 3100 50  0001 C CNN
F 4 "C17414" H 800 3100 50  0001 C CNN "LCSC"
	1    800  3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  2850 800  2950
Wire Wire Line
	800  3250 800  3350
Wire Wire Line
	800  3350 1350 3350
$Comp
L power:GND #PWR0110
U 1 1 5FC1A90B
P 1750 5300
F 0 "#PWR0110" H 1750 5050 50  0001 C CNN
F 1 "GND" H 1755 5127 50  0000 C CNN
F 2 "" H 1750 5300 50  0001 C CNN
F 3 "" H 1750 5300 50  0001 C CNN
	1    1750 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5050 1750 5200
Wire Wire Line
	1850 5050 1850 5200
Wire Wire Line
	1850 5200 1750 5200
Connection ~ 1750 5200
Wire Wire Line
	1750 5200 1750 5300
Text GLabel 2750 4450 2    50   BiDi ~ 0
USB_D-
Text GLabel 2750 4550 2    50   BiDi ~ 0
USB_D+
Wire Wire Line
	2350 4450 2750 4450
Wire Wire Line
	2350 4550 2750 4550
Text GLabel 2750 3350 2    50   Output ~ 0
GPIO_RELAY0
Text GLabel 2750 3450 2    50   Output ~ 0
GPIO_RELAY1
Text GLabel 2750 3550 2    50   Output ~ 0
GPIO_RELAY2
Text GLabel 2750 3650 2    50   Output ~ 0
GPIO_RELAY3
Text GLabel 2750 3750 2    50   Output ~ 0
GPIO_RELAY4
Text GLabel 2750 3850 2    50   Output ~ 0
GPIO_RELAY5
Text GLabel 2750 3950 2    50   Output ~ 0
GPIO_RELAY6
Text GLabel 2750 4050 2    50   Output ~ 0
GPIO_RELAY7
Wire Wire Line
	2350 3350 2750 3350
Wire Wire Line
	2350 3450 2750 3450
Wire Wire Line
	2350 3550 2750 3550
Wire Wire Line
	2350 3650 2750 3650
Wire Wire Line
	2750 3750 2350 3750
Wire Wire Line
	2350 3850 2750 3850
Wire Wire Line
	2750 3950 2350 3950
Wire Wire Line
	2350 4050 2750 4050
$Comp
L Relay_SolidState:ASSR-1218 U4
U 1 1 5FC37B75
P 6200 3100
F 0 "U4" H 6050 3300 50  0000 C CNN
F 1 "AQY212GS" H 6200 2900 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 6000 2900 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 6200 3100 50  0001 L CNN
F 4 "C129283" H 6200 3100 50  0001 C CNN "LCSC"
	1    6200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5FC47AB3
P 5650 3000
F 0 "R6" V 5550 2950 50  0000 C CNN
F 1 "750" V 5750 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 3000 50  0001 C CNN
F 3 "~" H 5650 3000 50  0001 C CNN
F 4 "C17818" V 5650 3000 50  0001 C CNN "LCSC"
	1    5650 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3000 5900 3000
$Comp
L Device:R R2
U 1 1 5FC4F529
P 5150 3000
F 0 "R2" V 5050 2950 50  0000 C CNN
F 1 "470" V 5250 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
F 4 "C17710" V 5150 3000 50  0001 C CNN "LCSC"
	1    5150 3000
	0    1    1    0   
$EndComp
Text GLabel 4400 3200 0    50   Input ~ 0
DRIVER_RELAY0
$Comp
L Device:LED D1
U 1 1 5FC3F180
P 4750 3000
F 0 "D1" H 4800 2900 50  0000 C CNN
F 1 "LED" H 4700 3100 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4750 3000 50  0001 C CNN
F 3 "~" H 4750 3000 50  0001 C CNN
F 4 "C72041" H 4750 3000 50  0001 C CNN "LCSC"
	1    4750 3000
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2803A U3
U 1 1 5FCAD4B0
P 4400 6850
F 0 "U3" H 4150 7300 50  0000 C CNN
F 1 "ULN2803A" H 4650 6200 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 4450 6200 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 4500 6650 50  0001 C CNN
F 4 "C9683" H 4400 6850 50  0001 C CNN "LCSC"
	1    4400 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5FCAEB9D
P 4400 7650
F 0 "#PWR0112" H 4400 7400 50  0001 C CNN
F 1 "GND" H 4405 7477 50  0000 C CNN
F 2 "" H 4400 7650 50  0001 C CNN
F 3 "" H 4400 7650 50  0001 C CNN
	1    4400 7650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 7550 4400 7650
Wire Wire Line
	4800 6550 5050 6550
Text GLabel 3750 6650 0    50   Input ~ 0
GPIO_RELAY7
Wire Wire Line
	3750 6650 4000 6650
Text GLabel 3750 6750 0    50   Input ~ 0
GPIO_RELAY6
Text GLabel 3750 6950 0    50   Input ~ 0
GPIO_RELAY4
Text GLabel 3750 7050 0    50   Input ~ 0
GPIO_RELAY3
Text GLabel 3750 7150 0    50   Input ~ 0
GPIO_RELAY2
Text GLabel 3750 7250 0    50   Input ~ 0
GPIO_RELAY1
Text GLabel 3750 7350 0    50   Input ~ 0
GPIO_RELAY0
Wire Wire Line
	3750 6750 4000 6750
Wire Wire Line
	3750 6850 4000 6850
Wire Wire Line
	3750 6950 4000 6950
Wire Wire Line
	3750 7050 4000 7050
Wire Wire Line
	3750 7150 4000 7150
Wire Wire Line
	3750 7250 4000 7250
Wire Wire Line
	3750 7350 4000 7350
Text GLabel 5100 6650 2    50   Output ~ 0
DRIVER_RELAY7
Text GLabel 5100 6750 2    50   Output ~ 0
DRIVER_RELAY6
Text GLabel 5100 6850 2    50   Output ~ 0
DRIVER_RELAY5
Text GLabel 5100 6950 2    50   Output ~ 0
DRIVER_RELAY4
Text GLabel 5100 7050 2    50   Output ~ 0
DRIVER_RELAY3
Text GLabel 5100 7150 2    50   Output ~ 0
DRIVER_RELAY2
Text GLabel 5100 7250 2    50   Output ~ 0
DRIVER_RELAY1
Text GLabel 5100 7350 2    50   Output ~ 0
DRIVER_RELAY0
Wire Wire Line
	4800 6650 5100 6650
Wire Wire Line
	4800 6750 5100 6750
Wire Wire Line
	4800 6850 5100 6850
Wire Wire Line
	4800 6950 5100 6950
Wire Wire Line
	4800 7050 5100 7050
Wire Wire Line
	4800 7150 5100 7150
Wire Wire Line
	4800 7250 5100 7250
Wire Wire Line
	4800 7350 5100 7350
Text GLabel 900  3950 0    50   BiDi ~ 0
PF1
Text GLabel 900  3850 0    50   BiDi ~ 0
PF0
Wire Wire Line
	900  3850 1350 3850
Wire Wire Line
	900  3950 1350 3950
Text GLabel 2750 4350 2    50   BiDi ~ 0
PA10
Text GLabel 2750 4250 2    50   BiDi ~ 0
PA9
Text GLabel 2750 4150 2    50   BiDi ~ 0
PA8
Text GLabel 2750 4650 2    50   BiDi ~ 0
PA13
Text GLabel 2750 4750 2    50   BiDi ~ 0
PA14
Text GLabel 2750 4850 2    50   BiDi ~ 0
PA15
Wire Wire Line
	2350 4150 2750 4150
Wire Wire Line
	2750 4250 2350 4250
Wire Wire Line
	2350 4350 2750 4350
Wire Wire Line
	2750 4650 2350 4650
Wire Wire Line
	2350 4750 2750 4750
Wire Wire Line
	2750 4850 2350 4850
$Comp
L Device:C C3
U 1 1 5FD1084F
P 5100 1300
F 0 "C3" H 4950 1400 50  0000 L CNN
F 1 "100nF" H 5150 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5138 1150 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
F 4 "C1525" H 5100 1300 50  0001 C CNN "LCSC"
	1    5100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5FD113B0
P 5450 1300
F 0 "C4" H 5300 1400 50  0000 L CNN
F 1 "100nF" H 5500 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5488 1150 50  0001 C CNN
F 3 "~" H 5450 1300 50  0001 C CNN
F 4 "C1525" H 5450 1300 50  0001 C CNN "LCSC"
	1    5450 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FD1B37B
P 5450 1750
F 0 "#PWR0113" H 5450 1500 50  0001 C CNN
F 1 "GND" H 5455 1577 50  0000 C CNN
F 2 "" H 5450 1750 50  0001 C CNN
F 3 "" H 5450 1750 50  0001 C CNN
	1    5450 1750
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5FD1C0E1
P 5450 850
F 0 "#PWR0114" H 5450 700 50  0001 C CNN
F 1 "+3V3" H 5465 1023 50  0000 C CNN
F 2 "" H 5450 850 50  0001 C CNN
F 3 "" H 5450 850 50  0001 C CNN
	1    5450 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1150 5100 1000
Wire Wire Line
	5100 1000 5450 1000
Wire Wire Line
	5450 1000 5450 850 
Wire Wire Line
	5800 1150 5800 1000
Wire Wire Line
	5800 1000 5450 1000
Connection ~ 5450 1000
Wire Wire Line
	5450 1150 5450 1000
Wire Wire Line
	5100 1450 5100 1600
Wire Wire Line
	5100 1600 5450 1600
Wire Wire Line
	5450 1600 5450 1450
Wire Wire Line
	5800 1450 5800 1600
Wire Wire Line
	5800 1600 5450 1600
Connection ~ 5450 1600
Wire Wire Line
	5450 1750 5450 1600
$Comp
L Device:C C6
U 1 1 5FD2CA6C
P 6500 1300
F 0 "C6" H 6350 1400 50  0000 L CNN
F 1 "100nF" H 6550 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6538 1150 50  0001 C CNN
F 3 "~" H 6500 1300 50  0001 C CNN
F 4 "C1525" H 6500 1300 50  0001 C CNN "LCSC"
	1    6500 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5FD116AC
P 5800 1300
F 0 "C5" H 5650 1400 50  0000 L CNN
F 1 "4.7uF" H 5850 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5838 1150 50  0001 C CNN
F 3 "~" H 5800 1300 50  0001 C CNN
F 4 "C23733" H 5800 1300 50  0001 C CNN "LCSC"
	1    5800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5FD2FC84
P 6900 1300
F 0 "C7" H 6750 1400 50  0000 L CNN
F 1 "4.7uF" H 6950 1200 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6938 1150 50  0001 C CNN
F 3 "~" H 6900 1300 50  0001 C CNN
F 4 "C23733" H 6900 1300 50  0001 C CNN "LCSC"
	1    6900 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1150 6500 1000
Wire Wire Line
	6500 1000 6700 1000
Wire Wire Line
	6900 1000 6900 1150
Wire Wire Line
	6500 1450 6500 1600
Wire Wire Line
	6500 1600 6700 1600
Wire Wire Line
	6900 1600 6900 1450
$Comp
L power:+3V3 #PWR0115
U 1 1 5FD36920
P 6700 850
F 0 "#PWR0115" H 6700 700 50  0001 C CNN
F 1 "+3V3" H 6715 1023 50  0000 C CNN
F 2 "" H 6700 850 50  0001 C CNN
F 3 "" H 6700 850 50  0001 C CNN
	1    6700 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FD3727A
P 6700 1750
F 0 "#PWR0116" H 6700 1500 50  0001 C CNN
F 1 "GND" H 6705 1577 50  0000 C CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "" H 6700 1750 50  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 850  6700 1000
Connection ~ 6700 1000
Wire Wire Line
	6700 1000 6900 1000
Wire Wire Line
	6700 1750 6700 1600
Connection ~ 6700 1600
Wire Wire Line
	6700 1600 6900 1600
$Comp
L Device:C C8
U 1 1 5FD51A24
P 7700 1250
F 0 "C8" H 7550 1350 50  0000 L CNN
F 1 "10nF" H 7750 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7738 1100 50  0001 C CNN
F 3 "~" H 7700 1250 50  0001 C CNN
F 4 "C15195" H 7700 1250 50  0001 C CNN "LCSC"
	1    7700 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5FD51D74
P 8100 1250
F 0 "C9" H 7950 1350 50  0000 L CNN
F 1 "1uF" H 8150 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8138 1100 50  0001 C CNN
F 3 "~" H 8100 1250 50  0001 C CNN
F 4 "C52923" H 8100 1250 50  0001 C CNN "LCSC"
	1    8100 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1100 7700 950 
Wire Wire Line
	7700 950  7900 950 
Wire Wire Line
	8100 950  8100 1100
Wire Wire Line
	7700 1400 7700 1550
Wire Wire Line
	7700 1550 7900 1550
Wire Wire Line
	8100 1550 8100 1400
$Comp
L power:+3V3 #PWR0117
U 1 1 5FD51D84
P 7900 800
F 0 "#PWR0117" H 7900 650 50  0001 C CNN
F 1 "+3V3" H 7915 973 50  0000 C CNN
F 2 "" H 7900 800 50  0001 C CNN
F 3 "" H 7900 800 50  0001 C CNN
	1    7900 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5FD51D8E
P 7900 1700
F 0 "#PWR0118" H 7900 1450 50  0001 C CNN
F 1 "GND" H 7905 1527 50  0000 C CNN
F 2 "" H 7900 1700 50  0001 C CNN
F 3 "" H 7900 1700 50  0001 C CNN
	1    7900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 800  7900 950 
Connection ~ 7900 950 
Wire Wire Line
	7900 950  8100 950 
Wire Wire Line
	7900 1700 7900 1550
Connection ~ 7900 1550
Wire Wire Line
	7900 1550 8100 1550
Text Notes 5850 2250 2    50   ~ 0
Place as close as possible\nto STM32F04 VDD/VSS pins
Text Notes 7200 2250 2    50   ~ 0
Place as close as possible\nto STM32F04 VDDIO2/VSS pins
Text Notes 8500 2250 2    50   ~ 0
Place as close as possible\nto STM32F04 VDDA/VSSA pins
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J2
U 1 1 5FD58475
P 1550 6850
F 0 "J2" H 1600 7467 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 1600 7376 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x10_P2.54mm_Vertical" H 1550 6850 50  0001 C CNN
F 3 "~" H 1550 6850 50  0001 C CNN
	1    1550 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4750 1350 4750
Wire Wire Line
	900  4650 1350 4650
Wire Wire Line
	900  4550 1350 4550
Wire Wire Line
	900  4450 1350 4450
Wire Wire Line
	900  4350 1350 4350
Wire Wire Line
	900  4250 1350 4250
Wire Wire Line
	900  4150 1350 4150
Text GLabel 900  4150 0    50   BiDi ~ 0
PB0
Text GLabel 900  4250 0    50   BiDi ~ 0
PB1
Text GLabel 900  4350 0    50   BiDi ~ 0
PB3
Text GLabel 900  4450 0    50   BiDi ~ 0
PB4
Text GLabel 900  4550 0    50   BiDi ~ 0
PB5
Text GLabel 900  4650 0    50   BiDi ~ 0
PB6
Text GLabel 900  4750 0    50   BiDi ~ 0
PB7
Wire Wire Line
	900  4850 1350 4850
Text GLabel 900  4850 0    50   BiDi ~ 0
PB8
Wire Wire Line
	1050 7150 1350 7150
Wire Wire Line
	1050 7050 1350 7050
Wire Wire Line
	1050 6950 1350 6950
Wire Wire Line
	1050 6850 1350 6850
Wire Wire Line
	1050 6750 1350 6750
Wire Wire Line
	1050 6650 1350 6650
Wire Wire Line
	1050 6550 1350 6550
Text GLabel 1050 6550 0    50   BiDi ~ 0
PB0
Text GLabel 1050 6650 0    50   BiDi ~ 0
PB1
Text GLabel 1050 6750 0    50   BiDi ~ 0
PB3
Text GLabel 1050 6850 0    50   BiDi ~ 0
PB4
Text GLabel 1050 6950 0    50   BiDi ~ 0
PB5
Text GLabel 1050 7050 0    50   BiDi ~ 0
PB6
Text GLabel 1050 7150 0    50   BiDi ~ 0
PB7
Wire Wire Line
	1050 7250 1350 7250
Text GLabel 1050 7250 0    50   BiDi ~ 0
PB8
Text GLabel 2100 6650 2    50   BiDi ~ 0
PA8
Text GLabel 2100 6750 2    50   BiDi ~ 0
PA9
Text GLabel 2100 6850 2    50   BiDi ~ 0
PA10
Text GLabel 2100 6950 2    50   BiDi ~ 0
PA13
Text GLabel 2100 7050 2    50   BiDi ~ 0
PA14
Text GLabel 2100 7150 2    50   BiDi ~ 0
PA15
Wire Wire Line
	2100 6650 1850 6650
Wire Wire Line
	2100 6750 1850 6750
Wire Wire Line
	2100 6850 1850 6850
Wire Wire Line
	2100 6950 1850 6950
Wire Wire Line
	1850 7050 2100 7050
Wire Wire Line
	2100 7150 1850 7150
$Comp
L power:GND #PWR0119
U 1 1 5FD895DD
P 1050 7350
F 0 "#PWR0119" H 1050 7100 50  0001 C CNN
F 1 "GND" V 1055 7222 50  0000 R CNN
F 2 "" H 1050 7350 50  0001 C CNN
F 3 "" H 1050 7350 50  0001 C CNN
	1    1050 7350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5FD8EFFD
P 1050 6450
F 0 "#PWR0120" H 1050 6200 50  0001 C CNN
F 1 "GND" V 1055 6322 50  0000 R CNN
F 2 "" H 1050 6450 50  0001 C CNN
F 3 "" H 1050 6450 50  0001 C CNN
	1    1050 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	1850 6550 2100 6550
Wire Wire Line
	1850 6450 2100 6450
$Comp
L power:+3V3 #PWR0122
U 1 1 5FD93F86
P 2100 6550
F 0 "#PWR0122" H 2100 6400 50  0001 C CNN
F 1 "+3V3" V 2100 6750 50  0000 C CNN
F 2 "" H 2100 6550 50  0001 C CNN
F 3 "" H 2100 6550 50  0001 C CNN
	1    2100 6550
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 6450 1350 6450
Text GLabel 6600 3000 2    50   Output ~ 0
RELAY0A
Text GLabel 6600 3200 2    50   Output ~ 0
RELAY0B
Wire Wire Line
	6500 3000 6600 3000
Wire Wire Line
	6500 3200 6600 3200
$Comp
L Relay_SolidState:ASSR-1218 U5
U 1 1 5FEBCF1E
P 6200 3800
F 0 "U5" H 6050 4000 50  0000 C CNN
F 1 "AQY212GS" H 6200 3600 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 6000 3600 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 6200 3800 50  0001 L CNN
F 4 "C129283" H 6200 3800 50  0001 C CNN "LCSC"
	1    6200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5FEBD3AA
P 5650 3700
F 0 "R7" V 5550 3650 50  0000 C CNN
F 1 "750" V 5750 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 3700 50  0001 C CNN
F 3 "~" H 5650 3700 50  0001 C CNN
F 4 "C17818" V 5650 3700 50  0001 C CNN "LCSC"
	1    5650 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3700 5900 3700
$Comp
L Device:R R3
U 1 1 5FEBD3C0
P 5150 3700
F 0 "R3" V 5050 3650 50  0000 C CNN
F 1 "470" V 5250 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 3700 50  0001 C CNN
F 3 "~" H 5150 3700 50  0001 C CNN
F 4 "C17710" V 5150 3700 50  0001 C CNN "LCSC"
	1    5150 3700
	0    1    1    0   
$EndComp
Text GLabel 4400 3900 0    50   Input ~ 0
DRIVER_RELAY1
$Comp
L Device:LED D2
U 1 1 5FEBD3D1
P 4750 3700
F 0 "D2" H 4800 3600 50  0000 C CNN
F 1 "LED" H 4700 3800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4750 3700 50  0001 C CNN
F 3 "~" H 4750 3700 50  0001 C CNN
F 4 "C72041" H 4750 3700 50  0001 C CNN "LCSC"
	1    4750 3700
	1    0    0    -1  
$EndComp
Text GLabel 6600 3700 2    50   Output ~ 0
RELAY1A
Text GLabel 6600 3900 2    50   Output ~ 0
RELAY1B
Wire Wire Line
	6500 3700 6600 3700
Wire Wire Line
	6500 3900 6600 3900
$Comp
L Relay_SolidState:ASSR-1218 U6
U 1 1 5FED61D9
P 6200 4550
F 0 "U6" H 6050 4750 50  0000 C CNN
F 1 "AQY212GS" H 6200 4350 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 6000 4350 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 6200 4550 50  0001 L CNN
F 4 "C129283" H 6200 4550 50  0001 C CNN "LCSC"
	1    6200 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5FED66FD
P 5650 4450
F 0 "R8" V 5550 4400 50  0000 C CNN
F 1 "750" V 5750 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 4450 50  0001 C CNN
F 3 "~" H 5650 4450 50  0001 C CNN
F 4 "C17818" V 5650 4450 50  0001 C CNN "LCSC"
	1    5650 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 4450 5900 4450
$Comp
L Device:R R4
U 1 1 5FED6713
P 5150 4450
F 0 "R4" V 5050 4400 50  0000 C CNN
F 1 "470" V 5250 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 4450 50  0001 C CNN
F 3 "~" H 5150 4450 50  0001 C CNN
F 4 "C17710" V 5150 4450 50  0001 C CNN "LCSC"
	1    5150 4450
	0    1    1    0   
$EndComp
Text GLabel 4400 4650 0    50   Input ~ 0
DRIVER_RELAY2
$Comp
L Device:LED D3
U 1 1 5FED6724
P 4750 4450
F 0 "D3" H 4800 4350 50  0000 C CNN
F 1 "LED" H 4700 4550 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4750 4450 50  0001 C CNN
F 3 "~" H 4750 4450 50  0001 C CNN
F 4 "C72041" H 4750 4450 50  0001 C CNN "LCSC"
	1    4750 4450
	1    0    0    -1  
$EndComp
Text GLabel 6600 4450 2    50   Output ~ 0
RELAY2A
Text GLabel 6600 4650 2    50   Output ~ 0
RELAY2B
Wire Wire Line
	6500 4450 6600 4450
Wire Wire Line
	6500 4650 6600 4650
Wire Wire Line
	5050 6550 5050 6350
$Comp
L power:+5V #PWR0127
U 1 1 5FCB1050
P 5050 6350
F 0 "#PWR0127" H 5050 6200 50  0001 C CNN
F 1 "+5V" H 5065 6523 50  0000 C CNN
F 2 "" H 5050 6350 50  0001 C CNN
F 3 "" H 5050 6350 50  0001 C CNN
	1    5050 6350
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:ASSR-1218 U7
U 1 1 5FEEA4ED
P 6200 5300
F 0 "U7" H 6050 5500 50  0000 C CNN
F 1 "AQY212GS" H 6200 5100 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 6000 5100 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 6200 5300 50  0001 L CNN
F 4 "C129283" H 6200 5300 50  0001 C CNN "LCSC"
	1    6200 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5FEEAAA9
P 5650 5200
F 0 "R9" V 5550 5150 50  0000 C CNN
F 1 "750" V 5750 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5580 5200 50  0001 C CNN
F 3 "~" H 5650 5200 50  0001 C CNN
F 4 "C17818" V 5650 5200 50  0001 C CNN "LCSC"
	1    5650 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5200 5900 5200
$Comp
L Device:R R5
U 1 1 5FEEAABF
P 5150 5200
F 0 "R5" V 5050 5150 50  0000 C CNN
F 1 "470" V 5250 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5080 5200 50  0001 C CNN
F 3 "~" H 5150 5200 50  0001 C CNN
F 4 "C17710" V 5150 5200 50  0001 C CNN "LCSC"
	1    5150 5200
	0    1    1    0   
$EndComp
Text GLabel 4400 5400 0    50   Input ~ 0
DRIVER_RELAY3
$Comp
L Device:LED D4
U 1 1 5FEEAAD0
P 4750 5200
F 0 "D4" H 4800 5100 50  0000 C CNN
F 1 "LED" H 4700 5300 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 4750 5200 50  0001 C CNN
F 3 "~" H 4750 5200 50  0001 C CNN
F 4 "C72041" H 4750 5200 50  0001 C CNN "LCSC"
	1    4750 5200
	1    0    0    -1  
$EndComp
Text GLabel 6600 5200 2    50   Output ~ 0
RELAY3A
Text GLabel 6600 5400 2    50   Output ~ 0
RELAY3B
Wire Wire Line
	6500 5200 6600 5200
Wire Wire Line
	6500 5400 6600 5400
$Comp
L Relay_SolidState:ASSR-1218 U8
U 1 1 5FF6F9B4
P 9600 3100
F 0 "U8" H 9450 3300 50  0000 C CNN
F 1 "AQY212GS" H 9600 2900 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 9400 2900 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 9600 3100 50  0001 L CNN
F 4 "C129283" H 9600 3100 50  0001 C CNN "LCSC"
	1    9600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5FF70008
P 9050 3000
F 0 "R14" V 8950 2950 50  0000 C CNN
F 1 "750" V 9150 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 3000 50  0001 C CNN
F 3 "~" H 9050 3000 50  0001 C CNN
F 4 "C17818" V 9050 3000 50  0001 C CNN "LCSC"
	1    9050 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3000 9300 3000
$Comp
L Device:R R10
U 1 1 5FF7001E
P 8550 3000
F 0 "R10" V 8450 2950 50  0000 C CNN
F 1 "470" V 8650 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8480 3000 50  0001 C CNN
F 3 "~" H 8550 3000 50  0001 C CNN
F 4 "C17710" V 8550 3000 50  0001 C CNN "LCSC"
	1    8550 3000
	0    1    1    0   
$EndComp
Text GLabel 7800 3200 0    50   Input ~ 0
DRIVER_RELAY4
$Comp
L Device:LED D5
U 1 1 5FF7002F
P 8150 3000
F 0 "D5" H 8200 2900 50  0000 C CNN
F 1 "LED" H 8100 3100 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8150 3000 50  0001 C CNN
F 3 "~" H 8150 3000 50  0001 C CNN
F 4 "C72041" H 8150 3000 50  0001 C CNN "LCSC"
	1    8150 3000
	1    0    0    -1  
$EndComp
Text GLabel 10000 3000 2    50   Output ~ 0
RELAY4A
Text GLabel 10000 3200 2    50   Output ~ 0
RELAY4B
Wire Wire Line
	9900 3000 10000 3000
Wire Wire Line
	9900 3200 10000 3200
$Comp
L Relay_SolidState:ASSR-1218 U9
U 1 1 5FF70040
P 9600 3800
F 0 "U9" H 9450 4000 50  0000 C CNN
F 1 "AQY212GS" H 9600 3600 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 9400 3600 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 9600 3800 50  0001 L CNN
F 4 "C129283" H 9600 3800 50  0001 C CNN "LCSC"
	1    9600 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5FF7004A
P 9050 3700
F 0 "R15" V 8950 3650 50  0000 C CNN
F 1 "750" V 9150 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 3700 50  0001 C CNN
F 3 "~" H 9050 3700 50  0001 C CNN
F 4 "C17818" V 9050 3700 50  0001 C CNN "LCSC"
	1    9050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 3700 9300 3700
$Comp
L Device:R R11
U 1 1 5FF70060
P 8550 3700
F 0 "R11" V 8450 3650 50  0000 C CNN
F 1 "470" V 8650 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8480 3700 50  0001 C CNN
F 3 "~" H 8550 3700 50  0001 C CNN
F 4 "C17710" V 8550 3700 50  0001 C CNN "LCSC"
	1    8550 3700
	0    1    1    0   
$EndComp
Text GLabel 7800 3900 0    50   Input ~ 0
DRIVER_RELAY5
$Comp
L Device:LED D6
U 1 1 5FF70071
P 8150 3700
F 0 "D6" H 8200 3600 50  0000 C CNN
F 1 "LED" H 8100 3800 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8150 3700 50  0001 C CNN
F 3 "~" H 8150 3700 50  0001 C CNN
F 4 "C72041" H 8150 3700 50  0001 C CNN "LCSC"
	1    8150 3700
	1    0    0    -1  
$EndComp
Text GLabel 10000 3700 2    50   Output ~ 0
RELAY5A
Text GLabel 10000 3900 2    50   Output ~ 0
RELAY5B
Wire Wire Line
	9900 3700 10000 3700
Wire Wire Line
	9900 3900 10000 3900
$Comp
L Relay_SolidState:ASSR-1218 U10
U 1 1 5FF70082
P 9600 4550
F 0 "U10" H 9450 4750 50  0000 C CNN
F 1 "AQY212GS" H 9600 4350 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 9400 4350 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 9600 4550 50  0001 L CNN
F 4 "C129283" H 9600 4550 50  0001 C CNN "LCSC"
	1    9600 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5FF7008C
P 9050 4450
F 0 "R16" V 8950 4400 50  0000 C CNN
F 1 "750" V 9150 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 4450 50  0001 C CNN
F 3 "~" H 9050 4450 50  0001 C CNN
F 4 "C17818" V 9050 4450 50  0001 C CNN "LCSC"
	1    9050 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 4450 9300 4450
$Comp
L Device:R R12
U 1 1 5FF700A2
P 8550 4450
F 0 "R12" V 8450 4400 50  0000 C CNN
F 1 "470" V 8650 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8480 4450 50  0001 C CNN
F 3 "~" H 8550 4450 50  0001 C CNN
F 4 "C17710" V 8550 4450 50  0001 C CNN "LCSC"
	1    8550 4450
	0    1    1    0   
$EndComp
Text GLabel 7800 4650 0    50   Input ~ 0
DRIVER_RELAY6
$Comp
L Device:LED D7
U 1 1 5FF700B3
P 8150 4450
F 0 "D7" H 8200 4350 50  0000 C CNN
F 1 "LED" H 8100 4550 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8150 4450 50  0001 C CNN
F 3 "~" H 8150 4450 50  0001 C CNN
F 4 "C72041" H 8150 4450 50  0001 C CNN "LCSC"
	1    8150 4450
	1    0    0    -1  
$EndComp
Text GLabel 10000 4450 2    50   Output ~ 0
RELAY6A
Text GLabel 10000 4650 2    50   Output ~ 0
RELAY6B
Wire Wire Line
	9900 4450 10000 4450
Wire Wire Line
	9900 4650 10000 4650
$Comp
L Relay_SolidState:ASSR-1218 U11
U 1 1 5FF700C4
P 9600 5300
F 0 "U11" H 9450 5500 50  0000 C CNN
F 1 "AQY212GS" H 9600 5100 50  0000 C CNN
F 2 "Package_SO:SO-4_4.4x4.3mm_P2.54mm" H 9400 5100 50  0001 L CIN
F 3 "https://docs.broadcom.com/docs/AV02-0173EN" H 9600 5300 50  0001 L CNN
F 4 "C129283" H 9600 5300 50  0001 C CNN "LCSC"
	1    9600 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5FF700CE
P 9050 5200
F 0 "R17" V 8950 5150 50  0000 C CNN
F 1 "750" V 9150 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8980 5200 50  0001 C CNN
F 3 "~" H 9050 5200 50  0001 C CNN
F 4 "C17818" V 9050 5200 50  0001 C CNN "LCSC"
	1    9050 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 5200 9300 5200
$Comp
L Device:R R13
U 1 1 5FF700E4
P 8550 5200
F 0 "R13" V 8450 5150 50  0000 C CNN
F 1 "470" V 8650 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8480 5200 50  0001 C CNN
F 3 "~" H 8550 5200 50  0001 C CNN
F 4 "C17710" V 8550 5200 50  0001 C CNN "LCSC"
	1    8550 5200
	0    1    1    0   
$EndComp
Text GLabel 7800 5400 0    50   Input ~ 0
DRIVER_RELAY7
$Comp
L Device:LED D8
U 1 1 5FF700F5
P 8150 5200
F 0 "D8" H 8200 5100 50  0000 C CNN
F 1 "LED" H 8100 5300 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8150 5200 50  0001 C CNN
F 3 "~" H 8150 5200 50  0001 C CNN
F 4 "C72041" H 8150 5200 50  0001 C CNN "LCSC"
	1    8150 5200
	1    0    0    -1  
$EndComp
Text GLabel 10000 5200 2    50   Output ~ 0
RELAY7A
Text GLabel 10000 5400 2    50   Output ~ 0
RELAY7B
Wire Wire Line
	9900 5200 10000 5200
Wire Wire Line
	9900 5400 10000 5400
Wire Wire Line
	1050 7350 1350 7350
Text GLabel 2100 7250 2    50   BiDi ~ 0
PF0
Text GLabel 2100 7350 2    50   BiDi ~ 0
PF1
Wire Wire Line
	1850 7250 2100 7250
Wire Wire Line
	1850 7350 2100 7350
Text GLabel 3750 6850 0    50   Input ~ 0
GPIO_RELAY5
Wire Wire Line
	9750 1500 9550 1500
Wire Wire Line
	9750 1100 9550 1100
Wire Wire Line
	9550 1000 9750 1000
Wire Wire Line
	9750 900  9550 900 
Wire Wire Line
	9550 800  9750 800 
Text GLabel 9550 1100 0    50   Output ~ 0
RELAY1A
Text GLabel 9550 1000 0    50   Output ~ 0
RELAY1B
Text GLabel 9550 900  0    50   Output ~ 0
RELAY0A
Text GLabel 9550 800  0    50   Output ~ 0
RELAY0B
Wire Wire Line
	9750 2300 9550 2300
Wire Wire Line
	9550 2200 9750 2200
Wire Wire Line
	9750 2100 9550 2100
Wire Wire Line
	9550 2000 9750 2000
Text GLabel 9550 2300 0    50   Output ~ 0
RELAY7A
Text GLabel 9550 2200 0    50   Output ~ 0
RELAY7B
Text GLabel 9550 2100 0    50   Output ~ 0
RELAY6A
Text GLabel 9550 2000 0    50   Output ~ 0
RELAY6B
Wire Wire Line
	9750 1900 9550 1900
Wire Wire Line
	9550 1800 9750 1800
Wire Wire Line
	9750 1700 9550 1700
Wire Wire Line
	9550 1600 9750 1600
Text GLabel 9550 1900 0    50   Output ~ 0
RELAY5A
Text GLabel 9550 1800 0    50   Output ~ 0
RELAY5B
Text GLabel 9550 1700 0    50   Output ~ 0
RELAY4A
Text GLabel 9550 1600 0    50   Output ~ 0
RELAY4B
Text GLabel 9550 1500 0    50   Output ~ 0
RELAY3A
Wire Wire Line
	9550 1400 9750 1400
Wire Wire Line
	9750 1300 9550 1300
Wire Wire Line
	9550 1200 9750 1200
Text GLabel 9550 1400 0    50   Output ~ 0
RELAY3B
Text GLabel 9550 1300 0    50   Output ~ 0
RELAY2A
Text GLabel 9550 1200 0    50   Output ~ 0
RELAY2B
$Comp
L Connector_Generic:Conn_01x16 J3
U 1 1 5FCC90C3
P 9950 1500
F 0 "J3" H 10030 1492 50  0000 L CNN
F 1 "Conn_01x16" H 10030 1401 50  0000 L CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-16_1x16_P5.00mm_Horizontal" H 9950 1500 50  0001 C CNN
F 3 "~" H 9950 1500 50  0001 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5FDA3E40
P 2100 6450
F 0 "#PWR0123" H 2100 6300 50  0001 C CNN
F 1 "+5V" V 2100 6550 50  0000 L CNN
F 2 "" H 2100 6450 50  0001 C CNN
F 3 "" H 2100 6450 50  0001 C CNN
	1    2100 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	4400 3200 4500 3200
Wire Wire Line
	4500 3200 4500 3000
Wire Wire Line
	4500 3000 4600 3000
Wire Wire Line
	4900 3000 5000 3000
Wire Wire Line
	4500 3200 5900 3200
Connection ~ 4500 3200
Wire Wire Line
	5300 3000 5400 3000
$Comp
L power:+5V #PWR0111
U 1 1 5FC88E8E
P 5400 2900
F 0 "#PWR0111" H 5400 2750 50  0001 C CNN
F 1 "+5V" H 5415 3073 50  0000 C CNN
F 2 "" H 5400 2900 50  0001 C CNN
F 3 "" H 5400 2900 50  0001 C CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2900 5400 3000
Connection ~ 5400 3000
Wire Wire Line
	5400 3000 5500 3000
$Comp
L power:+5V #PWR0121
U 1 1 5FC99164
P 5400 3600
F 0 "#PWR0121" H 5400 3450 50  0001 C CNN
F 1 "+5V" H 5415 3773 50  0000 C CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "" H 5400 3600 50  0001 C CNN
	1    5400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3700
Wire Wire Line
	4500 3700 4600 3700
Wire Wire Line
	4900 3700 5000 3700
Wire Wire Line
	5300 3700 5400 3700
Wire Wire Line
	5400 3600 5400 3700
Connection ~ 5400 3700
Wire Wire Line
	5400 3700 5500 3700
Wire Wire Line
	4500 3900 5900 3900
Connection ~ 4500 3900
Wire Wire Line
	4900 4450 5000 4450
Wire Wire Line
	5300 4450 5400 4450
Wire Wire Line
	5900 4650 4500 4650
Wire Wire Line
	4600 4450 4500 4450
Wire Wire Line
	4500 4450 4500 4650
Connection ~ 4500 4650
Wire Wire Line
	4500 4650 4400 4650
$Comp
L power:+5V #PWR0124
U 1 1 5FD254AD
P 5400 4350
F 0 "#PWR0124" H 5400 4200 50  0001 C CNN
F 1 "+5V" H 5415 4523 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4350 5400 4450
Connection ~ 5400 4450
Wire Wire Line
	5400 4450 5500 4450
$Comp
L power:+5V #PWR0125
U 1 1 5FD358AB
P 5400 5100
F 0 "#PWR0125" H 5400 4950 50  0001 C CNN
F 1 "+5V" H 5415 5273 50  0000 C CNN
F 2 "" H 5400 5100 50  0001 C CNN
F 3 "" H 5400 5100 50  0001 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 5400 4500 5400
Wire Wire Line
	4500 5400 4500 5200
Wire Wire Line
	4500 5200 4600 5200
Wire Wire Line
	4500 5400 5900 5400
Connection ~ 4500 5400
Wire Wire Line
	4900 5200 5000 5200
Wire Wire Line
	5300 5200 5400 5200
Wire Wire Line
	5400 5100 5400 5200
Connection ~ 5400 5200
Wire Wire Line
	5400 5200 5500 5200
$Comp
L power:+5V #PWR0126
U 1 1 5FD86449
P 8800 2900
F 0 "#PWR0126" H 8800 2750 50  0001 C CNN
F 1 "+5V" H 8815 3073 50  0000 C CNN
F 2 "" H 8800 2900 50  0001 C CNN
F 3 "" H 8800 2900 50  0001 C CNN
	1    8800 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3200 7900 3200
Wire Wire Line
	8000 3000 7900 3000
Wire Wire Line
	7900 3000 7900 3200
Connection ~ 7900 3200
Wire Wire Line
	7900 3200 9300 3200
Wire Wire Line
	8300 3000 8400 3000
Wire Wire Line
	8700 3000 8800 3000
Wire Wire Line
	8800 2900 8800 3000
Connection ~ 8800 3000
Wire Wire Line
	8800 3000 8900 3000
$Comp
L power:+5V #PWR0128
U 1 1 5FDD8268
P 8800 3600
F 0 "#PWR0128" H 8800 3450 50  0001 C CNN
F 1 "+5V" H 8815 3773 50  0000 C CNN
F 2 "" H 8800 3600 50  0001 C CNN
F 3 "" H 8800 3600 50  0001 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3900 7900 3900
Wire Wire Line
	8000 3700 7900 3700
Wire Wire Line
	7900 3700 7900 3900
Connection ~ 7900 3900
Wire Wire Line
	7900 3900 9300 3900
Wire Wire Line
	8300 3700 8400 3700
Wire Wire Line
	8700 3700 8800 3700
Wire Wire Line
	8800 3600 8800 3700
Connection ~ 8800 3700
Wire Wire Line
	8800 3700 8900 3700
$Comp
L power:+5V #PWR0129
U 1 1 5FE2A579
P 8800 4350
F 0 "#PWR0129" H 8800 4200 50  0001 C CNN
F 1 "+5V" H 8815 4523 50  0000 C CNN
F 2 "" H 8800 4350 50  0001 C CNN
F 3 "" H 8800 4350 50  0001 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 4650 7900 4650
Wire Wire Line
	8000 4450 7900 4450
Wire Wire Line
	7900 4450 7900 4650
Connection ~ 7900 4650
Wire Wire Line
	7900 4650 9300 4650
Wire Wire Line
	8300 4450 8400 4450
Wire Wire Line
	8700 4450 8800 4450
Wire Wire Line
	8800 4350 8800 4450
Connection ~ 8800 4450
Wire Wire Line
	8800 4450 8900 4450
$Comp
L power:+5V #PWR0130
U 1 1 5FE98CBF
P 8800 5100
F 0 "#PWR0130" H 8800 4950 50  0001 C CNN
F 1 "+5V" H 8815 5273 50  0000 C CNN
F 2 "" H 8800 5100 50  0001 C CNN
F 3 "" H 8800 5100 50  0001 C CNN
	1    8800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5200 7900 5200
Wire Wire Line
	7900 5200 7900 5400
Wire Wire Line
	7900 5400 7800 5400
Wire Wire Line
	7900 5400 9300 5400
Connection ~ 7900 5400
Wire Wire Line
	8300 5200 8400 5200
Wire Wire Line
	8700 5200 8800 5200
Wire Wire Line
	8800 5100 8800 5200
Connection ~ 8800 5200
Wire Wire Line
	8800 5200 8900 5200
$EndSCHEMATC
