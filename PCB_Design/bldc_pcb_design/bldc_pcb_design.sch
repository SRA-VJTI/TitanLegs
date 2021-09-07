EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Titan Legs PCB Design"
Date ""
Rev "v1.0"
Comp "Society of Robotics and Automation, VJTI"
Comment1 ""
Comment2 "MIT License"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR02
U 1 1 612ACDB6
P 10565 4285
F 0 "#PWR02" H 10565 4035 50  0001 C CNN
F 1 "GND" H 10570 4112 50  0000 C CNN
F 2 "" H 10565 4285 50  0001 C CNN
F 3 "" H 10565 4285 50  0001 C CNN
	1    10565 4285
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61360C33
P 15565 4390
F 0 "#PWR01" H 15565 4140 50  0001 C CNN
F 1 "GND" H 15570 4217 50  0000 C CNN
F 2 "" H 15565 4390 50  0001 C CNN
F 3 "" H 15565 4390 50  0001 C CNN
	1    15565 4390
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 613C1C94
P 14290 2630
F 0 "C2" H 14120 2635 50  0000 C CNN
F 1 "1uF 6.3V" H 14110 2735 50  0000 C CNN
F 2 "" H 14328 2480 50  0001 C CNN
F 3 "~" H 14290 2630 50  0001 C CNN
	1    14290 2630
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 614B2098
P 14970 2685
F 0 "C1" H 14785 2700 50  0000 C CNN
F 1 "1uF 6.3V" H 14765 2785 50  0000 C CNN
F 2 "" H 15008 2535 50  0001 C CNN
F 3 "~" H 14970 2685 50  0001 C CNN
	1    14970 2685
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 61590AEF
P 13620 1485
F 0 "C9" H 13730 1485 50  0000 L CNN
F 1 "2.2uF 16V" H 13665 1390 50  0000 L CNN
F 2 "" H 13658 1335 50  0001 C CNN
F 3 "~" H 13620 1485 50  0001 C CNN
	1    13620 1485
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 6159B72C
P 14205 1485
F 0 "C10" H 14310 1495 50  0000 L CNN
F 1 "1uF 16V" H 14235 1390 50  0000 L CNN
F 2 "" H 14243 1335 50  0001 C CNN
F 3 "~" H 14205 1485 50  0001 C CNN
	1    14205 1485
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C21
U 1 1 61331388
P 3480 1810
F 0 "C21" V 3251 1810 50  0000 C CNN
F 1 "10 uF 50V" V 3342 1810 50  0000 C CNN
F 2 "" H 3480 1810 50  0001 C CNN
F 3 "~" H 3480 1810 50  0001 C CNN
	1    3480 1810
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 61331461
P 3670 1810
F 0 "C22" V 3885 1810 50  0000 C CNN
F 1 "0.1 uF 50V" V 3790 1810 50  0000 C CNN
F 2 "" H 3670 1810 50  0001 C CNN
F 3 "~" H 3670 1810 50  0001 C CNN
	1    3670 1810
	1    0    0    -1  
$EndComp
Wire Wire Line
	3480 1910 3480 2020
Wire Wire Line
	3480 1710 3480 1610
$Comp
L power:GND #PWR016
U 1 1 613638F2
P 3575 2020
F 0 "#PWR016" H 3575 1770 50  0001 C CNN
F 1 "GND" H 3580 1847 50  0000 C CNN
F 2 "" H 3575 2020 50  0001 C CNN
F 3 "" H 3575 2020 50  0001 C CNN
	1    3575 2020
	1    0    0    -1  
$EndComp
Wire Wire Line
	3670 1610 3670 1710
Wire Wire Line
	3670 1910 3670 2020
Wire Wire Line
	3480 2020 3575 2020
Connection ~ 3575 2020
Wire Wire Line
	3575 2020 3670 2020
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 613284E1
P 1660 2695
F 0 "U1" H 1215 4040 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 1660 2705 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 1660 1195 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1360 2745 50  0001 C CNN
	1    1660 2695
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6132F0D7
P 1660 4095
F 0 "#PWR04" H 1660 3845 50  0001 C CNN
F 1 "GND" H 1665 3922 50  0000 C CNN
F 2 "" H 1660 4095 50  0001 C CNN
F 3 "" H 1660 4095 50  0001 C CNN
	1    1660 4095
	1    0    0    -1  
$EndComp
Text Notes 1330 865  0    157  ~ 31
Microcontroller (ESP32)
$Comp
L Switch:SW_Push SW1
U 1 1 61407B87
P 3315 3400
F 0 "SW1" V 3361 3352 50  0000 R CNN
F 1 "BOOT" V 3270 3352 50  0000 R CNN
F 2 "" H 3315 3600 50  0001 C CNN
F 3 "~" H 3315 3600 50  0001 C CNN
	1    3315 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R3
U 1 1 6140AE4F
P 3315 2815
F 0 "R3" H 3383 2861 50  0000 L CNN
F 1 "10k" H 3383 2770 50  0000 L CNN
F 2 "" H 3315 2815 50  0001 C CNN
F 3 "~" H 3315 2815 50  0001 C CNN
	1    3315 2815
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R8
U 1 1 6140B20D
P 4270 2815
F 0 "R8" H 4338 2861 50  0000 L CNN
F 1 "10k" H 4338 2770 50  0000 L CNN
F 2 "" H 4270 2815 50  0001 C CNN
F 3 "~" H 4270 2815 50  0001 C CNN
	1    4270 2815
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C23
U 1 1 6140B773
P 4650 3400
F 0 "C23" V 4865 3400 50  0000 C CNN
F 1 "1uF 50V" V 4770 3400 50  0000 C CNN
F 2 "" H 4650 3400 50  0001 C CNN
F 3 "~" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3315 2915 3315 3075
$Comp
L power:GND #PWR015
U 1 1 61446B2F
P 3315 3600
F 0 "#PWR015" H 3315 3350 50  0001 C CNN
F 1 "GND" H 3320 3427 50  0000 C CNN
F 2 "" H 3315 3600 50  0001 C CNN
F 3 "" H 3315 3600 50  0001 C CNN
	1    3315 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 6146B3AD
P 4270 3600
F 0 "#PWR018" H 4270 3350 50  0001 C CNN
F 1 "GND" H 4275 3427 50  0000 C CNN
F 2 "" H 4270 3600 50  0001 C CNN
F 3 "" H 4270 3600 50  0001 C CNN
	1    4270 3600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6140918C
P 4270 3400
F 0 "SW2" V 4316 3352 50  0000 R CNN
F 1 "RESET" V 4225 3352 50  0000 R CNN
F 2 "" H 4270 3600 50  0001 C CNN
F 3 "~" H 4270 3600 50  0001 C CNN
	1    4270 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4650 3300 4650 3200
Wire Wire Line
	4650 3200 4270 3200
Connection ~ 4270 3200
Wire Wire Line
	4270 3600 4650 3600
Wire Wire Line
	4650 3600 4650 3500
Connection ~ 4270 3600
Wire Wire Line
	3315 3075 3635 3075
Connection ~ 3315 3075
Wire Wire Line
	3315 3075 3315 3200
Text GLabel 3635 3075 2    39   Input ~ 0
BOOT
Text GLabel 4590 3080 2    39   Input ~ 0
RESET
Wire Wire Line
	4270 3080 4590 3080
Wire Wire Line
	4270 2915 4270 3080
Connection ~ 4270 3080
Wire Wire Line
	4270 3080 4270 3200
Text GLabel 930  1495 0    39   Input ~ 0
RESET
Wire Wire Line
	1060 1495 930  1495
Text GLabel 2435 1495 2    39   Input ~ 0
BOOT
Wire Wire Line
	2260 1495 2435 1495
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 615344D0
P 3405 4165
F 0 "J1" V 3343 3877 50  0000 R CNN
F 1 "Conn_01x04_Female" V 3252 3877 50  0000 R CNN
F 2 "" H 3405 4165 50  0001 C CNN
F 3 "~" H 3405 4165 50  0001 C CNN
	1    3405 4165
	0    -1   -1   0   
$EndComp
Text GLabel 2435 1595 2    39   Input ~ 0
TX
Text GLabel 2435 1795 2    39   Input ~ 0
RX
Wire Wire Line
	2260 1795 2435 1795
Text GLabel 3305 4565 3    39   Input ~ 0
RX
Wire Wire Line
	2260 1595 2435 1595
Wire Wire Line
	3305 4365 3305 4565
Text GLabel 3405 4565 3    39   Input ~ 0
TX
Wire Wire Line
	3405 4365 3405 4565
Wire Wire Line
	3505 4365 3505 4565
Wire Wire Line
	3605 4365 3605 4565
Text GLabel 3505 4565 3    39   Input ~ 0
3V3_ISOLATED
$Comp
L power:GND #PWR017
U 1 1 615934C4
P 3605 4565
F 0 "#PWR017" H 3605 4315 50  0001 C CNN
F 1 "GND" V 3605 4375 50  0000 C CNN
F 2 "" H 3605 4565 50  0001 C CNN
F 3 "" H 3605 4565 50  0001 C CNN
	1    3605 4565
	1    0    0    -1  
$EndComp
Text Notes 3795 4850 0    59   ~ 0
3V3_ISOLATED is used to \npower ESP32 when board \nisn't being powered \nby VIN.
Text GLabel 1660 1295 1    39   Input ~ 0
3V3_IN
Text GLabel 1815 4555 0    39   Input ~ 0
3V3_ISOLATED
Text GLabel 2295 4685 2    39   Input ~ 0
3V3_IN
Text GLabel 1815 4810 0    39   Input ~ 0
3V3_REGULATED
Wire Wire Line
	1815 4555 1960 4555
Wire Wire Line
	1960 4555 1960 4685
Wire Wire Line
	1960 4810 1815 4810
Wire Wire Line
	2295 4685 1960 4685
Connection ~ 1960 4685
Wire Wire Line
	1960 4685 1960 4810
Text Notes 1465 5075 0    39   ~ 0
Don't connect 3V3_ISOLATED \nwhile board is powered by Battery
Text GLabel 3575 1510 1    39   Input ~ 0
3V3_IN
Wire Wire Line
	3480 1610 3575 1610
Wire Wire Line
	3575 1510 3575 1610
Connection ~ 3575 1610
Wire Wire Line
	3575 1610 3670 1610
Text Notes 5725 5500 0    157  ~ 31
Additional Circuitry
Text Notes 5215 870  0    157  ~ 31
3 Phased Gate MOSFET Switches
Wire Notes Line
	6970 470  6975 470 
Wire Notes Line
	9420 4910 9420 4920
Wire Notes Line
	9425 920  9425 925 
Wire Wire Line
	9020 1150 9080 1150
$Comp
L power:GND #PWR013
U 1 1 61649FB4
P 9080 1150
F 0 "#PWR013" H 9080 900 50  0001 C CNN
F 1 "GND" H 9085 977 50  0000 C CNN
F 2 "" H 9080 1150 50  0001 C CNN
F 3 "" H 9080 1150 50  0001 C CNN
	1    9080 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 61649FAE
P 8870 1150
F 0 "C18" V 8985 1196 50  0000 L CNN
F 1 "1uF" V 8985 1025 50  0000 L CNN
F 2 "" H 8908 1000 50  0001 C CNN
F 3 "~" H 8870 1150 50  0001 C CNN
	1    8870 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8630 1150 8720 1150
Wire Wire Line
	7680 1130 7740 1130
$Comp
L power:GND #PWR010
U 1 1 6163C464
P 7740 1130
F 0 "#PWR010" H 7740 880 50  0001 C CNN
F 1 "GND" H 7745 957 50  0000 C CNN
F 2 "" H 7740 1130 50  0001 C CNN
F 3 "" H 7740 1130 50  0001 C CNN
	1    7740 1130
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 6163C45E
P 7530 1130
F 0 "C17" V 7645 1176 50  0000 L CNN
F 1 "1uF" V 7645 1005 50  0000 L CNN
F 2 "" H 7568 980 50  0001 C CNN
F 3 "~" H 7530 1130 50  0001 C CNN
	1    7530 1130
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7290 1130 7380 1130
Wire Wire Line
	6440 1130 6500 1130
$Comp
L power:GND #PWR07
U 1 1 6162F8AC
P 6500 1130
F 0 "#PWR07" H 6500 880 50  0001 C CNN
F 1 "GND" H 6505 957 50  0000 C CNN
F 2 "" H 6500 1130 50  0001 C CNN
F 3 "" H 6500 1130 50  0001 C CNN
	1    6500 1130
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6162F8A6
P 6290 1130
F 0 "C12" V 6405 1176 50  0000 L CNN
F 1 "1uF" V 6405 1005 50  0000 L CNN
F 2 "" H 6328 980 50  0001 C CNN
F 3 "~" H 6290 1130 50  0001 C CNN
	1    6290 1130
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 1130 6140 1130
Wire Wire Line
	6050 4660 5965 4660
Wire Wire Line
	6050 4565 6050 4660
Wire Wire Line
	8430 2975 8430 2750
Wire Wire Line
	7090 2990 7090 2730
Connection ~ 5750 1130
Connection ~ 5850 2965
Wire Wire Line
	5750 4565 5675 4565
Wire Wire Line
	5950 1130 6050 1130
Connection ~ 5950 1130
Wire Wire Line
	5850 1130 5950 1130
Connection ~ 5850 1130
Connection ~ 6050 1130
Wire Wire Line
	6050 1130 6050 1135
Wire Wire Line
	5750 1130 5850 1130
Connection ~ 7090 2990
Connection ~ 7290 1130
Wire Wire Line
	7290 1130 7290 1135
Connection ~ 8630 1150
Wire Wire Line
	8630 1150 8630 1155
Text Notes 3995 1840 0    59   ~ 0
Decoupling caps, \nkeep close to\npower pins\n
Wire Notes Line width 10
	2970 4060 5155 4060
Wire Notes Line width 10
	2970 2410 5155 2410
Wire Notes Line width 10
	485  4430 2970 4430
Wire Notes Line width 10
	2970 2410 2970 5145
$Comp
L AS5600-ASOT:AS5600-ASOT U8
U 1 1 6180CBD6
P 2205 6345
F 0 "U8" H 2805 6610 50  0000 C CNN
F 1 "AS5600-ASOT" H 2805 6519 50  0000 C CNN
F 2 "SOIC127P600X175-8N" H 3255 6445 50  0001 L CNN
F 3 "http://www.ams.com/eng/content/download/639463/1698857/325295" H 3255 6345 50  0001 L CNN
F 4 "Board Mount Hall Effect / Magnetic Sensors AS5600 Magnetic Sensor 12-Bit" H 3255 6245 50  0001 L CNN "Description"
F 5 "1.75" H 3255 6145 50  0001 L CNN "Height"
F 6 "ams" H 3255 6045 50  0001 L CNN "Manufacturer_Name"
F 7 "AS5600-ASOT" H 3255 5945 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "985-AS5600-ASOT" H 3255 5845 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/ams/AS5600-ASOT?qs=KTMMzrZdriGJpjhsnAEYBA%3D%3D" H 3255 5745 50  0001 L CNN "Mouser Price/Stock"
F 10 "AS5600-ASOT" H 3255 5645 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/as5600-asot/ams-ag?region=nac" H 3255 5545 50  0001 L CNN "Arrow Price/Stock"
	1    2205 6345
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C20
U 1 1 61815CDE
P 1330 6550
F 0 "C20" V 1545 6550 50  0000 C CNN
F 1 "100 nF" V 1450 6550 50  0000 C CNN
F 2 "" H 1330 6550 50  0001 C CNN
F 3 "~" H 1330 6550 50  0001 C CNN
	1    1330 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2205 6645 2135 6645
Wire Wire Line
	2135 6645 2135 6745
$Comp
L power:GND #PWR014
U 1 1 6183198C
P 2135 6745
F 0 "#PWR014" H 2135 6495 50  0001 C CNN
F 1 "GND" V 2135 6555 50  0000 C CNN
F 2 "" H 2135 6745 50  0001 C CNN
F 3 "" H 2135 6745 50  0001 C CNN
	1    2135 6745
	1    0    0    -1  
$EndComp
Wire Wire Line
	2205 6345 2135 6345
Wire Wire Line
	2135 6345 2135 6445
Wire Wire Line
	2135 6445 2205 6445
Wire Wire Line
	2135 6345 2135 6185
Connection ~ 2135 6345
Text GLabel 2135 6185 1    39   Input ~ 0
3V3_IN
Text GLabel 1330 6380 1    39   Input ~ 0
3V3_IN
Wire Wire Line
	1330 6380 1330 6450
Wire Wire Line
	1330 6650 1330 6720
$Comp
L power:GND #PWR03
U 1 1 6186F8DF
P 1330 6720
F 0 "#PWR03" H 1330 6470 50  0001 C CNN
F 1 "GND" V 1330 6530 50  0000 C CNN
F 2 "" H 1330 6720 50  0001 C CNN
F 3 "" H 1330 6720 50  0001 C CNN
	1    1330 6720
	1    0    0    -1  
$EndComp
Text Notes 1190 6795 1    59   ~ 0
Decoupling cap,\nkeep close to\npower pins\n
Text GLabel 3315 2715 1    39   Input ~ 0
3V3_IN
Text GLabel 4270 2715 1    39   Input ~ 0
3V3_IN
Text GLabel 3760 6445 2    39   Input ~ 0
ENC_SDA
Text GLabel 3760 6545 2    39   Input ~ 0
ENC_SCL
Wire Wire Line
	3405 6545 3700 6545
Wire Wire Line
	3760 6445 3585 6445
NoConn ~ 3405 6645
$Comp
L Device:R_Small_US R5
U 1 1 618149BB
P 3700 6125
F 0 "R5" H 3768 6171 50  0000 L CNN
F 1 "4.7k" H 3768 6080 50  0000 L CNN
F 2 "" H 3700 6125 50  0001 C CNN
F 3 "~" H 3700 6125 50  0001 C CNN
	1    3700 6125
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 61811B61
P 3585 6125
F 0 "R4" H 3660 6080 50  0000 L CNN
F 1 "4.7k" H 3650 6170 50  0000 L CNN
F 2 "" H 3585 6125 50  0001 C CNN
F 3 "~" H 3585 6125 50  0001 C CNN
	1    3585 6125
	-1   0    0    1   
$EndComp
Wire Wire Line
	3585 6225 3585 6445
Connection ~ 3585 6445
Wire Wire Line
	3585 6445 3405 6445
Wire Wire Line
	3700 6225 3700 6545
Connection ~ 3700 6545
Wire Wire Line
	3700 6545 3760 6545
Wire Wire Line
	3585 6025 3585 5980
Wire Wire Line
	3585 5980 3645 5980
Wire Wire Line
	3700 5980 3700 6025
Text GLabel 3645 5900 1    39   Input ~ 0
3V3_IN
Wire Wire Line
	3645 5900 3645 5980
Connection ~ 3645 5980
Wire Wire Line
	3645 5980 3700 5980
Wire Wire Line
	2205 6545 1990 6545
Text GLabel 1990 6545 0    39   Input ~ 0
ENC_OUT
Text GLabel 3760 6345 2    39   Input ~ 0
ENC_DIR
Wire Wire Line
	3405 6345 3760 6345
Text Notes 1685 5465 0    157  ~ 31
Magnetic Encoder
Wire Notes Line width 20
	485  7290 5150 7290
Text Notes 4145 6610 0    39   ~ 0
ENC_DIR -> GND, \nthen Clockwise\n\nENC_DIR -> VDD, \nthen Counter Clockwise
Text GLabel 2435 1995 2    39   Input ~ 0
ENC_SDA
Wire Wire Line
	2260 1995 2435 1995
Text GLabel 2435 2695 2    39   Input ~ 0
ENC_SCL
Wire Wire Line
	2260 2695 2435 2695
Text GLabel 2435 2595 2    39   Input ~ 0
ENC_DIR
Text GLabel 2435 2495 2    39   Input ~ 0
ENC_OUT
Wire Wire Line
	2260 2495 2435 2495
Wire Wire Line
	2435 2595 2260 2595
$Comp
L Regulator_Switching:LM2672M-3.3 U9
U 1 1 6131BA8C
P 3075 8680
F 0 "U9" H 3075 9147 50  0000 C CNN
F 1 "LM2672M-3.3" H 3075 9056 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3125 8330 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2672.pdf" H 3075 8680 50  0001 C CNN
	1    3075 8680
	-1   0    0    -1  
$EndComp
Text Notes 1190 7580 0    157  ~ 31
Power Supply (VIN to 3.3v)
$Comp
L power:GND #PWR021
U 1 1 61396B76
P 3075 9290
F 0 "#PWR021" H 3075 9040 50  0001 C CNN
F 1 "GND" V 3075 9100 50  0000 C CNN
F 2 "" H 3075 9290 50  0001 C CNN
F 3 "" H 3075 9290 50  0001 C CNN
	1    3075 9290
	1    0    0    -1  
$EndComp
NoConn ~ 3575 8880
NoConn ~ 3575 8680
NoConn ~ 3575 8780
Wire Wire Line
	3575 8480 3980 8480
Text GLabel 4550 8480 2    39   Input ~ 0
POWER_IN
Wire Wire Line
	3980 8655 3980 8480
$Comp
L power:GND #PWR022
U 1 1 61425A4E
P 3980 9300
F 0 "#PWR022" H 3980 9050 50  0001 C CNN
F 1 "GND" V 3980 9110 50  0000 C CNN
F 2 "" H 3980 9300 50  0001 C CNN
F 3 "" H 3980 9300 50  0001 C CNN
	1    3980 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C25
U 1 1 6143826A
P 2370 8780
F 0 "C25" H 2220 8770 50  0000 C CNN
F 1 "50V 0.01uF " H 2360 8920 50  0000 C CNN
F 2 "" H 2370 8780 50  0001 C CNN
F 3 "~" H 2370 8780 50  0001 C CNN
	1    2370 8780
	1    0    0    -1  
$EndComp
Text GLabel 1230 8880 0    39   Input ~ 0
3V3_REGULATED
Wire Wire Line
	3980 8955 3980 9300
Wire Wire Line
	3075 9080 3075 9290
$Comp
L power:GND #PWR019
U 1 1 614ACA2E
P 1615 9335
F 0 "#PWR019" H 1615 9085 50  0001 C CNN
F 1 "GND" V 1615 9145 50  0000 C CNN
F 2 "" H 1615 9335 50  0001 C CNN
F 3 "" H 1615 9335 50  0001 C CNN
	1    1615 9335
	1    0    0    -1  
$EndComp
Wire Wire Line
	3980 8480 4550 8480
Connection ~ 3980 8480
Wire Wire Line
	1230 8880 1615 8880
Connection ~ 1615 8880
Wire Wire Line
	1615 8880 1840 8880
Connection ~ 2370 8880
Wire Wire Line
	2370 8880 2575 8880
Wire Wire Line
	2370 8680 2575 8680
$Comp
L power:GND #PWR020
U 1 1 61562ED3
P 2370 9285
F 0 "#PWR020" H 2370 9035 50  0001 C CNN
F 1 "GND" V 2370 9095 50  0000 C CNN
F 2 "" H 2370 9285 50  0001 C CNN
F 3 "" H 2370 9285 50  0001 C CNN
	1    2370 9285
	1    0    0    -1  
$EndComp
Wire Wire Line
	2370 8955 2370 8880
Wire Wire Line
	2370 9255 2370 9285
$Comp
L Device:L L1
U 1 1 61466B3D
P 1990 8880
F 0 "L1" V 2180 8880 50  0000 C CNN
F 1 "47uH" V 2089 8880 50  0000 C CNN
F 2 "" H 1990 8880 50  0001 C CNN
F 3 "~" H 1990 8880 50  0001 C CNN
	1    1990 8880
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2140 8880 2370 8880
Wire Wire Line
	2575 8480 1615 8480
Wire Wire Line
	1615 8480 1615 8880
Text Notes 1585 9995 0    59   ~ 0
Keep Bypass Capacitors\n close to Chip
Text Notes 1490 8395 0    59   ~ 0
Keep Inductor away \nfrom Feedback Route
Text Notes 3615 9825 0    59   ~ 0
SS - Soft Start\nConnect Capacitor for soft start
Text Notes 3640 10265 0    59   ~ 0
Pull ON/~OFF~ High\nTo enable Switching\nNC - Internal Default \nPull Up
$Comp
L Device:D_Schottky D1
U 1 1 613262EF
P 2370 9105
F 0 "D1" V 2324 9184 50  0000 L CNN
F 1 "3A 40V" V 2415 9184 50  0000 L CNN
F 2 "" H 2370 9105 50  0001 C CNN
F 3 "~" H 2370 9105 50  0001 C CNN
	1    2370 9105
	0    1    1    0   
$EndComp
Wire Wire Line
	1615 9270 1615 9335
Wire Notes Line width 20
	5155 505  5155 11210
Wire Notes Line width 20
	485  5150 9380 5150
Wire Notes Line width 20
	9380 490  9380 11195
Text Notes 9630 865  0    157  ~ 31
DRV8305 - Gate Driver
$Comp
L Device:C C3
U 1 1 6135FBF8
P 15565 4240
F 0 "C3" H 15405 4230 50  0000 C CNN
F 1 " 1uF 6.3V" H 15400 4335 50  0000 C CNN
F 2 "" H 15603 4090 50  0001 C CNN
F 3 "~" H 15565 4240 50  0001 C CNN
	1    15565 4240
	-1   0    0    1   
$EndComp
Text Notes 12625 3495 0    39   ~ 0
SO1, SO2 and SO3 are \ncurrent amplifier output pins\n
Text Notes 12635 3730 0    39   ~ 0
SP1, SP2 and SP3 are \npositive current sense input pins\nfor amplifers 1,2 and 3 respectively\n
Text Notes 12635 3965 0    39   ~ 0
SNP1, SN2 and SN3 are\nnegative current sense input pins\nfor amplifers 1,2 and 3 respectively\n
Text Notes 13345 765  0    39   ~ 0
VCPH - High Side Gate Driver regulator\nVCP_LSD - Low SIde Gate Driver regulator
Text GLabel 11465 1435 1    39   Input ~ 0
DRV_HG_reg
Text GLabel 11565 1435 1    39   Input ~ 0
DRV_LG_reg
Text GLabel 11165 1435 1    39   Input ~ 0
PVDD
Text GLabel 13620 1685 3    39   Input ~ 0
PVDD
Text GLabel 13620 1265 1    39   Input ~ 0
DRV_HG_reg
Text GLabel 14205 1265 1    39   Input ~ 0
DRV_LG_reg
$Comp
L power:GND #PWR?
U 1 1 61596AC8
P 14205 1705
F 0 "#PWR?" H 14205 1455 50  0001 C CNN
F 1 "GND" H 14210 1532 50  0000 C CNN
F 2 "" H 14205 1705 50  0001 C CNN
F 3 "" H 14205 1705 50  0001 C CNN
	1    14205 1705
	1    0    0    -1  
$EndComp
Wire Wire Line
	13620 1265 13620 1335
Wire Wire Line
	13620 1635 13620 1685
Wire Wire Line
	14205 1635 14205 1705
Wire Wire Line
	14205 1335 14205 1265
Text GLabel 11365 1435 1    39   Input ~ 0
CP2H
Text GLabel 11265 1435 1    39   Input ~ 0
CP2L
Text GLabel 14995 1055 1    39   Input ~ 0
CP1H
Text GLabel 14995 1470 3    39   Input ~ 0
CP1L
Text GLabel 10965 1435 1    39   Input ~ 0
CP1H
Text GLabel 11065 1435 1    39   Input ~ 0
CP1L
Wire Wire Line
	11565 1625 11565 1435
Wire Wire Line
	11465 1625 11465 1435
Wire Wire Line
	11365 1625 11365 1435
Wire Wire Line
	11265 1625 11265 1435
Wire Wire Line
	11165 1625 11165 1435
Wire Wire Line
	10465 1625 10465 1435
Wire Wire Line
	10765 1625 10765 1435
Wire Wire Line
	11065 1625 11065 1435
Wire Wire Line
	10965 1625 10965 1435
$Comp
L Device:C C?
U 1 1 6191E71A
P 14995 1260
F 0 "C?" H 15110 1306 50  0000 L CNN
F 1 "0.047uF" H 15110 1215 50  0000 L CNN
F 2 "" H 15033 1110 50  0001 C CNN
F 3 "~" H 14995 1260 50  0001 C CNN
	1    14995 1260
	1    0    0    -1  
$EndComp
Wire Wire Line
	14995 1055 14995 1110
Wire Wire Line
	14995 1410 14995 1470
Text GLabel 15525 1050 1    39   Input ~ 0
CP2H
Text GLabel 15525 1465 3    39   Input ~ 0
CP2L
$Comp
L Device:C C?
U 1 1 6198BEA1
P 15525 1255
F 0 "C?" H 15640 1301 50  0000 L CNN
F 1 "0.047uF" H 15640 1210 50  0000 L CNN
F 2 "" H 15563 1105 50  0001 C CNN
F 3 "~" H 15525 1255 50  0001 C CNN
	1    15525 1255
	1    0    0    -1  
$EndComp
Wire Wire Line
	15525 1050 15525 1105
Wire Wire Line
	15525 1405 15525 1465
Text Notes 14955 795  0    39   ~ 0
Flying capacitors for \ncharge pumps with rating :\nPVDD for CP1\nPVDD*2 for CP2
$Comp
L power:GND #PWR?
U 1 1 61A45317
P 10765 1435
F 0 "#PWR?" H 10765 1185 50  0001 C CNN
F 1 "GND" H 10770 1262 50  0000 C CNN
F 2 "" H 10765 1435 50  0001 C CNN
F 3 "" H 10765 1435 50  0001 C CNN
	1    10765 1435
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 61A6629F
P 3980 8805
F 0 "C?" H 4095 8851 50  0000 L CNN
F 1 "100uF 100V" H 4095 8760 50  0000 L CNN
F 2 "" H 4018 8655 50  0001 C CNN
F 3 "~" H 3980 8805 50  0001 C CNN
	1    3980 8805
	1    0    0    -1  
$EndComp
Text Notes 2225 9695 0    39   ~ 0
do2014ac footprint
$Comp
L Device:C C?
U 1 1 61A8BF16
P 1615 9120
F 0 "C?" H 1730 9166 50  0000 L CNN
F 1 "68uF 10V" H 1730 9075 50  0000 L CNN
F 2 "" H 1653 8970 50  0001 C CNN
F 3 "~" H 1615 9120 50  0001 C CNN
	1    1615 9120
	1    0    0    -1  
$EndComp
Wire Wire Line
	1615 8880 1615 8970
$Comp
L Device:R R2
U 1 1 614CBA09
P 14845 4155
F 0 "R2" H 14910 4220 50  0000 L CNN
F 1 "100" H 14910 4120 50  0000 L CNN
F 2 "" V 14775 4155 50  0001 C CNN
F 3 "~" H 14845 4155 50  0001 C CNN
	1    14845 4155
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 613CB388
P 14290 2335
F 0 "#PWR?" H 14290 2185 50  0001 C CNN
F 1 "+3V3" H 14305 2508 50  0000 C CNN
F 2 "" H 14290 2335 50  0001 C CNN
F 3 "" H 14290 2335 50  0001 C CNN
	1    14290 2335
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 613CEC5C
P 14290 2910
F 0 "#PWR?" H 14290 2660 50  0001 C CNN
F 1 "GND" H 14295 2737 50  0000 C CNN
F 2 "" H 14290 2910 50  0001 C CNN
F 3 "" H 14290 2910 50  0001 C CNN
	1    14290 2910
	1    0    0    -1  
$EndComp
Text GLabel 10665 4415 3    39   Input ~ 0
DRV_AVDD
Text GLabel 10465 1435 1    39   Input ~ 0
DRV_VREG
Text GLabel 14970 2450 1    39   Input ~ 0
DRV_DVDD
Text GLabel 14140 2410 0    39   Input ~ 0
DRV_VREG
Wire Wire Line
	10665 1625 10665 1445
Text GLabel 10665 1445 1    39   Input ~ 0
DRV_DVDD
$Comp
L DRV8305NPHPR:DRV8305NPHPR IC1
U 1 1 61052D6F
P 10165 2425
F 0 "IC1" H 10970 2085 50  0000 L CNN
F 1 "DRV8305NPHPR" H 10750 1840 50  0000 L CNN
F 2 "QFP50P900X900X120-48N" H 11715 3025 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/405/drv8305-768621.pdf" H 11715 2925 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers Three Phase Gate Driver with Three Integrated Current Shunt Amplifiers 48-HTQFP -40 to 125" H 11715 2825 50  0001 L CNN "Description"
F 5 "1.2" H 11715 2725 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 11715 2625 50  0001 L CNN "Manufacturer_Name"
F 7 "DRV8305NPHPR" H 11715 2525 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-DRV8305NPHPR" H 11715 2425 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8305NPHPR?qs=kFLL9AfgRSDaehWhXenR2Q%3D%3D" H 11715 2325 50  0001 L CNN "Mouser Price/Stock"
F 10 "DRV8305NPHPR" H 11715 2225 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/drv8305nphpr/texas-instruments" H 11715 2125 50  0001 L CNN "Arrow Price/Stock"
	1    10165 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	10565 4225 10565 4285
$Comp
L power:GND #PWR?
U 1 1 615B2683
P 14970 2970
F 0 "#PWR?" H 14970 2720 50  0001 C CNN
F 1 "GND" H 14975 2797 50  0000 C CNN
F 2 "" H 14970 2970 50  0001 C CNN
F 3 "" H 14970 2970 50  0001 C CNN
	1    14970 2970
	1    0    0    -1  
$EndComp
Wire Wire Line
	14290 2335 14290 2410
Wire Wire Line
	14140 2410 14290 2410
Connection ~ 14290 2410
Wire Wire Line
	14290 2410 14290 2480
Wire Wire Line
	14290 2780 14290 2910
Wire Wire Line
	14970 2970 14970 2835
Wire Wire Line
	14970 2450 14970 2535
Text Notes 15085 2240 0    39   ~ 0
DRV_DVDD: 3.3V internal digital\nsupply regulator
Text Notes 12685 2855 0    39   ~ 0
Connect with-> 3.3V or 5V, 50-mA LDO; \n                       connect 1-µF to GND\nConnect with->  Reference voltage; LDO disabled
Text GLabel 14845 3910 1    39   Input ~ 0
VDRAIN
Text GLabel 12840 1255 1    39   Input ~ 0
PVDD
$Comp
L Device:C C?
U 1 1 6169BF2D
P 12840 1470
F 0 "C?" H 12670 1475 50  0000 C CNN
F 1 "4.7uF Ceramic" H 12560 1575 50  0000 C CNN
F 2 "" H 12878 1320 50  0001 C CNN
F 3 "~" H 12840 1470 50  0001 C CNN
	1    12840 1470
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6169BF33
P 12840 1750
F 0 "#PWR?" H 12840 1500 50  0001 C CNN
F 1 "GND" H 12845 1577 50  0000 C CNN
F 2 "" H 12840 1750 50  0001 C CNN
F 3 "" H 12840 1750 50  0001 C CNN
	1    12840 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	12840 1620 12840 1750
Wire Wire Line
	12840 1255 12840 1320
Wire Wire Line
	10865 1625 10865 1435
Text GLabel 10865 1435 1    39   Input ~ 0
VDRAIN
Text GLabel 14845 4370 3    39   Input ~ 0
PVDD
Wire Wire Line
	14845 4305 14845 4370
Wire Wire Line
	14845 3910 14845 4005
Text GLabel 6935 1130 0    39   Input ~ 0
PVDD
Text GLabel 8275 1150 0    39   Input ~ 0
PVDD
Wire Wire Line
	10665 4415 10665 4225
Text GLabel 15565 3970 1    39   Input ~ 0
DRV_AVDD
Wire Wire Line
	15565 3970 15565 4090
NoConn ~ 10565 1625
Text GLabel 11465 4415 3    39   Input ~ 0
SN1
Text GLabel 13165 4815 3    39   Input ~ 0
SN2
Text GLabel 11265 4415 3    39   Input ~ 0
SN2
Text GLabel 11065 4415 3    39   Input ~ 0
SN3
Text GLabel 13470 4810 3    39   Input ~ 0
SN3
Text GLabel 11565 4415 3    39   Input ~ 0
SP1
Text GLabel 11365 4415 3    39   Input ~ 0
SP2
Text GLabel 11165 4415 3    39   Input ~ 0
SP3
Text GLabel 10765 4415 3    39   Input ~ 0
SO1
Text GLabel 10865 4415 3    39   Input ~ 0
SO2
Text GLabel 10965 4415 3    39   Input ~ 0
SO3
Text GLabel 12880 4805 3    39   Input ~ 0
SN1
Wire Wire Line
	10865 4415 10865 4225
Wire Wire Line
	10765 4415 10765 4225
Wire Wire Line
	10965 4415 10965 4225
Wire Wire Line
	11065 4415 11065 4225
Wire Wire Line
	11265 4415 11265 4225
Wire Wire Line
	11165 4415 11165 4225
Wire Wire Line
	11365 4415 11365 4225
Wire Wire Line
	11465 4415 11465 4225
Wire Wire Line
	11565 4415 11565 4225
Wire Wire Line
	12880 4685 12880 4805
Wire Wire Line
	13165 4695 13165 4815
Wire Wire Line
	13470 4690 13470 4810
Text GLabel 12055 2425 2    39   Input ~ 0
GHA
Text GLabel 12055 2525 2    39   Input ~ 0
SHA
Text GLabel 12055 2625 2    39   Input ~ 0
SLA
Text GLabel 12055 2725 2    39   Input ~ 0
GLA
Wire Wire Line
	12055 2725 11865 2725
Wire Wire Line
	12055 2525 11865 2525
Wire Wire Line
	12055 2625 11865 2625
Wire Wire Line
	12055 2425 11865 2425
Text GLabel 12055 2825 2    39   Input ~ 0
GHB
Text GLabel 12055 2925 2    39   Input ~ 0
SHB
Text GLabel 12055 3025 2    39   Input ~ 0
SLB
Text GLabel 12055 3125 2    39   Input ~ 0
GLB
Wire Wire Line
	12055 3125 11865 3125
Wire Wire Line
	12055 2925 11865 2925
Wire Wire Line
	12055 3025 11865 3025
Wire Wire Line
	12055 2825 11865 2825
Text GLabel 12055 3225 2    39   Input ~ 0
GHC
Text GLabel 12055 3325 2    39   Input ~ 0
SHC
Text GLabel 12055 3425 2    39   Input ~ 0
SLC
Text GLabel 12055 3525 2    39   Input ~ 0
GLC
Wire Wire Line
	12055 3525 11865 3525
Wire Wire Line
	12055 3325 11865 3325
Wire Wire Line
	12055 3425 11865 3425
Wire Wire Line
	12055 3225 11865 3225
Text GLabel 6110 2730 2    39   Input ~ 0
GHA
Text GLabel 5665 2965 0    39   Input ~ 0
SHA
Text GLabel 5965 4660 0    39   Input ~ 0
SLA
Text GLabel 5675 4565 0    39   Input ~ 0
GLA
Wire Wire Line
	5750 1130 5710 1130
Text GLabel 5710 1130 0    39   Input ~ 0
PVDD
Text GLabel 7350 2730 2    39   Input ~ 0
GHB
Text GLabel 6890 2990 0    39   Input ~ 0
SHB
Text GLabel 8695 2750 2    39   Input ~ 0
GHC
Text GLabel 8255 2975 0    39   Input ~ 0
SHC
Text GLabel 9975 3525 0    39   Input ~ 0
DRV_SPI_CLK
Text GLabel 9975 3425 0    39   Input ~ 0
DRV_SPI_MISO
Text GLabel 9975 3325 0    39   Input ~ 0
DRV_SPI_MOSI
Text GLabel 9975 3225 0    39   Input ~ 0
DRV_SPI_nSCS
Wire Wire Line
	9975 3225 10165 3225
Wire Wire Line
	9975 3425 10165 3425
Wire Wire Line
	9975 3325 10165 3325
Wire Wire Line
	9975 3525 10165 3525
Text GLabel 9975 3125 0    39   Input ~ 0
DRV_nFAULT
Text GLabel 9975 3025 0    39   Input ~ 0
DRV_LC
Text GLabel 9975 2925 0    39   Input ~ 0
DRV_HC
Text GLabel 9975 2825 0    39   Input ~ 0
DRV_LB
Wire Wire Line
	9975 2825 10165 2825
Wire Wire Line
	9975 3025 10165 3025
Wire Wire Line
	9975 2925 10165 2925
Wire Wire Line
	9975 3125 10165 3125
Text GLabel 9975 2725 0    39   Input ~ 0
DRV_HB
Text GLabel 9975 2625 0    39   Input ~ 0
DRV_LA
Text GLabel 9975 2525 0    39   Input ~ 0
DRV_HA
Text GLabel 9975 2425 0    39   Input ~ 0
DRV_EN_GATE
Wire Wire Line
	9975 2425 10165 2425
Wire Wire Line
	9975 2625 10165 2625
Wire Wire Line
	9975 2525 10165 2525
Wire Wire Line
	9975 2725 10165 2725
Wire Notes Line width 20
	9395 5145 16085 5145
Wire Notes Line
	16070 5145 16070 5150
Wire Notes Line
	16060 2040 16060 2025
Wire Notes Line
	13255 495  13255 2045
Wire Notes Line
	12560 480  12560 2040
Wire Notes Line
	12380 5145 12375 5145
Wire Notes Line
	12560 2045 12560 5130
Wire Notes Line
	15205 3270 15205 5140
Wire Notes Line
	15205 5140 15200 5140
Text Notes 12635 755  0    39   ~ 0
Power Bypass \nCapacitor
Text GLabel 2450 2295 2    39   Input ~ 0
DRV_SPI_CLK
Text GLabel 2450 2095 2    39   Input ~ 0
DRV_SPI_MISO
Text GLabel 2450 2195 2    39   Input ~ 0
DRV_SPI_MOSI
Text GLabel 2450 2395 2    39   Input ~ 0
DRV_SPI_nSCS
Wire Wire Line
	2450 2395 2260 2395
Wire Wire Line
	2450 2095 2260 2095
Wire Wire Line
	2450 2195 2260 2195
Wire Wire Line
	2450 2295 2260 2295
Text GLabel 2450 2795 2    39   Input ~ 0
DRV_nFAULT
Text GLabel 2450 2895 2    39   Input ~ 0
DRV_LC
Text GLabel 2450 2995 2    39   Input ~ 0
DRV_HC
Text GLabel 2450 3095 2    39   Input ~ 0
DRV_LB
Wire Wire Line
	2450 3095 2260 3095
Wire Wire Line
	2450 2895 2260 2895
Wire Wire Line
	2450 2995 2260 2995
Wire Wire Line
	2450 2795 2260 2795
Text GLabel 2450 3195 2    39   Input ~ 0
DRV_HB
Text GLabel 2450 3295 2    39   Input ~ 0
DRV_LA
Text GLabel 2450 3395 2    39   Input ~ 0
DRV_HA
Text GLabel 2450 3495 2    39   Input ~ 0
DRV_EN_GATE
Wire Wire Line
	2450 3495 2260 3495
Wire Wire Line
	2450 3295 2260 3295
Wire Wire Line
	2450 3395 2260 3395
Wire Wire Line
	2450 3195 2260 3195
Text GLabel 14005 3875 1    39   Input ~ 0
3V3_IN
Text GLabel 14260 3880 1    39   Input ~ 0
3V3_IN
$Comp
L Device:R R?
U 1 1 623A6BA6
P 14005 4085
F 0 "R?" H 14075 4131 50  0000 L CNN
F 1 "10k" H 14065 4040 50  0000 L CNN
F 2 "" V 13935 4085 50  0001 C CNN
F 3 "~" H 14005 4085 50  0001 C CNN
	1    14005 4085
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 623A8C63
P 14260 4090
F 0 "R?" H 14330 4136 50  0000 L CNN
F 1 "10k" H 14320 4045 50  0000 L CNN
F 2 "" V 14190 4090 50  0001 C CNN
F 3 "~" H 14260 4090 50  0001 C CNN
	1    14260 4090
	1    0    0    -1  
$EndComp
Wire Wire Line
	10465 4415 10465 4225
Wire Wire Line
	14005 3875 14005 3935
Wire Wire Line
	14260 3880 14260 3940
Text GLabel 10465 4415 3    39   Input ~ 0
PWR_GD
Text GLabel 14260 4240 3    39   Input ~ 0
PWR_GD
Text GLabel 14005 4235 3    39   Input ~ 0
DRV_nFAULT
Wire Notes Line
	13770 3280 13770 5150
Wire Notes Line
	13675 5145 13680 5145
Wire Notes Line
	14540 3275 14540 5150
Wire Notes Line
	14540 5150 14555 5150
Text Notes 13920 5050 0    39   ~ 0
PWRGD: Power Good\nDRV_VREG and MCU \nwatchdog  fault \nindication
Text Notes 13820 3495 0    39   ~ 0
DRV_nFAULT: Fault\nIndicator
Text Notes 15220 3495 0    39   ~ 0
5-V internal analog supply \nregulator bypass capacitor
Text Notes 14580 3485 0    39   ~ 0
High Side MOSFET\nDrain
Wire Wire Line
	13470 4270 13470 4390
Wire Wire Line
	13165 4275 13165 4395
Wire Wire Line
	12880 4265 12880 4385
Text GLabel 13470 4270 1    39   Input ~ 0
SP3
Text GLabel 13165 4275 1    39   Input ~ 0
SP2
Text GLabel 12880 4265 1    39   Input ~ 0
SP1
$Comp
L Device:C C8
U 1 1 6132F188
P 13470 4540
F 0 "C8" H 13470 4615 50  0000 L CNN
F 1 "1nF" H 13495 4445 50  0000 L CNN
F 2 "" H 13508 4390 50  0001 C CNN
F 3 "~" H 13470 4540 50  0001 C CNN
	1    13470 4540
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6132E765
P 13165 4545
F 0 "C6" H 13165 4620 50  0000 L CNN
F 1 "1nF" H 13190 4450 50  0000 L CNN
F 2 "" H 13203 4395 50  0001 C CNN
F 3 "~" H 13165 4545 50  0001 C CNN
	1    13165 4545
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 6132DCA3
P 12880 4535
F 0 "C4" H 12890 4610 50  0000 L CNN
F 1 "1nF" H 12895 4450 50  0000 L CNN
F 2 "" H 12918 4385 50  0001 C CNN
F 3 "~" H 12880 4535 50  0001 C CNN
	1    12880 4535
	1    0    0    -1  
$EndComp
Wire Notes Line
	12560 2040 16060 2040
Wire Notes Line
	12560 3280 16060 3280
Wire Notes Line
	14680 475  14680 3280
Text Notes 12665 2230 0    39   ~ 0
DRV_VREG:  Internalamplifier \nreference voltage and SDO pullup.
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 62681882
P 5750 2730
F 0 "U?" V 6580 2530 60  0000 L CNN
F 1 "CSD18532NQ5B" H 6255 2305 60  0000 L CNN
F 2 "DNK8" H 6550 2970 60  0001 C CNN
F 3 "" H 5750 2730 60  0000 C CNN
	1    5750 2730
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6935 1130 6990 1130
Wire Wire Line
	8255 2975 8330 2975
Wire Wire Line
	6890 2990 6990 2990
Wire Wire Line
	7090 2990 7190 2990
Wire Wire Line
	5850 4565 5950 4565
Wire Wire Line
	5665 2965 5750 2965
Wire Wire Line
	5850 2965 5950 2965
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 6271FB30
P 6990 2730
F 0 "U?" V 7820 2530 60  0000 L CNN
F 1 "CSD18532NQ5B" H 7495 2305 60  0000 L CNN
F 2 "DNK8" H 7790 2970 60  0001 C CNN
F 3 "" H 6990 2730 60  0000 C CNN
	1    6990 2730
	0    -1   -1   0   
$EndComp
Connection ~ 6990 1130
Wire Wire Line
	6990 1130 7090 1130
Connection ~ 7090 1130
Wire Wire Line
	7090 1130 7190 1130
Connection ~ 7190 1130
Wire Wire Line
	7190 1130 7290 1130
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 6274500E
P 5750 4565
F 0 "U?" V 6580 4365 60  0000 L CNN
F 1 "CSD18532NQ5B" H 6255 4140 60  0000 L CNN
F 2 "DNK8" H 6550 4805 60  0001 C CNN
F 3 "" H 5750 4565 60  0000 C CNN
	1    5750 4565
	0    -1   -1   0   
$EndComp
Connection ~ 5750 2965
Wire Wire Line
	5750 2965 5850 2965
Connection ~ 5950 2965
Wire Wire Line
	5950 2965 6050 2965
Connection ~ 5950 4565
Wire Wire Line
	5950 4565 6050 4565
Connection ~ 6050 4565
Wire Wire Line
	6050 2730 6110 2730
Wire Wire Line
	6990 2730 7090 2730
Wire Wire Line
	7290 2730 7350 2730
Wire Wire Line
	8630 2750 8695 2750
Wire Wire Line
	8330 2750 8430 2750
Wire Wire Line
	8275 1150 8330 1150
Connection ~ 8330 1150
Wire Wire Line
	8330 1150 8430 1150
Connection ~ 8430 1150
Wire Wire Line
	8430 1150 8530 1150
Wire Wire Line
	8530 1150 8630 1150
Connection ~ 8530 1150
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 62706068
P 8330 2750
F 0 "U?" V 9160 2550 60  0000 L CNN
F 1 "CSD18532NQ5B" H 8835 2325 60  0000 L CNN
F 2 "DNK8" H 9130 2990 60  0001 C CNN
F 3 "" H 8330 2750 60  0000 C CNN
	1    8330 2750
	0    -1   -1   0   
$EndComp
Connection ~ 8430 2750
Wire Wire Line
	8430 2750 8530 2750
Connection ~ 8430 2975
Wire Wire Line
	8430 2975 8530 2975
Wire Wire Line
	7090 2730 7190 2730
Connection ~ 7090 2730
Wire Wire Line
	5750 2730 5850 2730
Wire Wire Line
	5850 2730 5850 2965
Connection ~ 5850 2730
Wire Wire Line
	5850 2730 5950 2730
Wire Wire Line
	7290 4685 7205 4685
Wire Wire Line
	7290 4590 7290 4685
Wire Wire Line
	6990 4590 6915 4590
Text GLabel 7205 4685 0    39   Input ~ 0
SLB
Text GLabel 6915 4590 0    39   Input ~ 0
GLB
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 62877531
P 6990 4590
F 0 "U?" V 7820 4390 60  0000 L CNN
F 1 "CSD18532NQ5B" H 7495 4165 60  0000 L CNN
F 2 "DNK8" H 7790 4830 60  0001 C CNN
F 3 "" H 6990 4590 60  0000 C CNN
	1    6990 4590
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7090 4590 7190 4590
Wire Wire Line
	6990 2990 7090 2990
Connection ~ 6990 2990
Wire Wire Line
	7190 2990 7290 2990
Connection ~ 7190 2990
Connection ~ 7190 4590
Wire Wire Line
	7190 4590 7290 4590
Connection ~ 7290 4590
Wire Wire Line
	8630 4670 8545 4670
Wire Wire Line
	8630 4575 8630 4670
Wire Wire Line
	8330 4575 8255 4575
Text GLabel 8545 4670 0    39   Input ~ 0
SLB
Text GLabel 8255 4575 0    39   Input ~ 0
GLB
$Comp
L CSD18532NQ5B:CSD18532NQ5B U?
U 1 1 628C4F21
P 8330 4575
F 0 "U?" V 9160 4375 60  0000 L CNN
F 1 "CSD18532NQ5B" H 8835 4150 60  0000 L CNN
F 2 "DNK8" H 9130 4815 60  0001 C CNN
F 3 "" H 8330 4575 60  0000 C CNN
	1    8330 4575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8430 4575 8530 4575
Connection ~ 8530 4575
Wire Wire Line
	8530 4575 8630 4575
Connection ~ 8630 4575
Wire Wire Line
	8330 2975 8430 2975
Connection ~ 8330 2975
Wire Wire Line
	8530 2975 8630 2975
Connection ~ 8530 2975
Text Notes 4100 8400 0    59   ~ 0
Input Voltage-\n8V to 40V
Text Notes 745  8790 0    59   ~ 0
Output Voltage-\n3.3V 1A
$EndSCHEMATC
