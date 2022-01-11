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
L power:GND #PWR018
U 1 1 612ACDB6
P 10535 4115
F 0 "#PWR018" H 10535 3865 50  0001 C CNN
F 1 "GND" H 10540 3942 50  0000 C CNN
F 2 "" H 10535 4115 50  0001 C CNN
F 3 "" H 10535 4115 50  0001 C CNN
	1    10535 4115
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 61360C33
P 14095 3025
F 0 "#PWR024" H 14095 2775 50  0001 C CNN
F 1 "GND" H 14100 2852 50  0000 C CNN
F 2 "" H 14095 3025 50  0001 C CNN
F 3 "" H 14095 3025 50  0001 C CNN
	1    14095 3025
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 613C1C94
P 13410 2810
F 0 "C22" H 13240 2815 50  0000 C CNN
F 1 "1uF 6.3V" H 13230 2915 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13448 2660 50  0001 C CNN
F 3 "~" H 13410 2810 50  0001 C CNN
	1    13410 2810
	-1   0    0    1   
$EndComp
$Comp
L Device:C C30
U 1 1 614B2098
P 15675 2825
F 0 "C30" H 15490 2840 50  0000 C CNN
F 1 "1uF 6.3V" H 15470 2925 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15713 2675 50  0001 C CNN
F 3 "~" H 15675 2825 50  0001 C CNN
	1    15675 2825
	-1   0    0    1   
$EndComp
$Comp
L Device:C C23
U 1 1 61590AEF
P 13645 1390
F 0 "C23" H 13755 1390 50  0000 L CNN
F 1 "2.2uF 16V" H 13690 1295 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13683 1240 50  0001 C CNN
F 3 "~" H 13645 1390 50  0001 C CNN
	1    13645 1390
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 6159B72C
P 14230 1390
F 0 "C25" H 14335 1400 50  0000 L CNN
F 1 "1uF 16V" H 14260 1295 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14268 1240 50  0001 C CNN
F 3 "~" H 14230 1390 50  0001 C CNN
	1    14230 1390
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 61331388
P 3445 1885
F 0 "C4" V 3216 1885 50  0000 C CNN
F 1 "10 uF 50V" V 3307 1885 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3445 1885 50  0001 C CNN
F 3 "~" H 3445 1885 50  0001 C CNN
	1    3445 1885
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 61331461
P 3635 1885
F 0 "C5" V 3850 1885 50  0000 C CNN
F 1 "0.1 uF 50V" V 3755 1885 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3635 1885 50  0001 C CNN
F 3 "~" H 3635 1885 50  0001 C CNN
	1    3635 1885
	1    0    0    -1  
$EndComp
Wire Wire Line
	3445 1985 3445 2095
Wire Wire Line
	3445 1785 3445 1685
$Comp
L power:GND #PWR08
U 1 1 613638F2
P 3540 2095
F 0 "#PWR08" H 3540 1845 50  0001 C CNN
F 1 "GND" H 3545 1922 50  0000 C CNN
F 2 "" H 3540 2095 50  0001 C CNN
F 3 "" H 3540 2095 50  0001 C CNN
	1    3540 2095
	1    0    0    -1  
$EndComp
Wire Wire Line
	3635 1685 3635 1785
Wire Wire Line
	3635 1985 3635 2095
Wire Wire Line
	3445 2095 3540 2095
Connection ~ 3540 2095
Wire Wire Line
	3540 2095 3635 2095
$Comp
L RF_Module:ESP32-WROOM-32D U1
U 1 1 613284E1
P 1500 2535
F 0 "U1" H 1055 3880 50  0000 C CNN
F 1 "ESP32-WROOM-32D" V 1500 2545 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 1500 1035 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 1200 2585 50  0001 C CNN
	1    1500 2535
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 6132F0D7
P 1500 3935
F 0 "#PWR02" H 1500 3685 50  0001 C CNN
F 1 "GND" H 1505 3762 50  0000 C CNN
F 2 "" H 1500 3935 50  0001 C CNN
F 3 "" H 1500 3935 50  0001 C CNN
	1    1500 3935
	1    0    0    -1  
$EndComp
Text Notes 1180 785  0    157  ~ 31
Microcontroller (ESP32)
$Comp
L Switch:SW_Push SW1
U 1 1 61407B87
P 3425 3595
F 0 "SW1" V 3471 3547 50  0000 R CNN
F 1 "BOOT" V 3380 3547 50  0000 R CNN
F 2 "Tactile_Switch:Tactile_Switch" H 3425 3795 50  0001 C CNN
F 3 "~" H 3425 3795 50  0001 C CNN
	1    3425 3595
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 6140AE4F
P 3425 3080
F 0 "R1" H 3493 3126 50  0000 L CNN
F 1 "10k" H 3493 3035 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3425 3080 50  0001 C CNN
F 3 "~" H 3425 3080 50  0001 C CNN
	1    3425 3080
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R4
U 1 1 6140B20D
P 4380 3075
F 0 "R4" H 4448 3121 50  0000 L CNN
F 1 "10k" H 4448 3030 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4380 3075 50  0001 C CNN
F 3 "~" H 4380 3075 50  0001 C CNN
	1    4380 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 6140B773
P 4760 3595
F 0 "C7" V 4975 3595 50  0000 C CNN
F 1 "1uF 50V" V 4880 3595 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4760 3595 50  0001 C CNN
F 3 "~" H 4760 3595 50  0001 C CNN
	1    4760 3595
	1    0    0    -1  
$EndComp
Wire Wire Line
	3425 3180 3425 3270
$Comp
L power:GND #PWR07
U 1 1 61446B2F
P 3425 3795
F 0 "#PWR07" H 3425 3545 50  0001 C CNN
F 1 "GND" H 3430 3622 50  0000 C CNN
F 2 "" H 3425 3795 50  0001 C CNN
F 3 "" H 3425 3795 50  0001 C CNN
	1    3425 3795
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 6146B3AD
P 4380 3795
F 0 "#PWR011" H 4380 3545 50  0001 C CNN
F 1 "GND" H 4385 3622 50  0000 C CNN
F 2 "" H 4380 3795 50  0001 C CNN
F 3 "" H 4380 3795 50  0001 C CNN
	1    4380 3795
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6140918C
P 4380 3595
F 0 "SW2" V 4426 3547 50  0000 R CNN
F 1 "RESET" V 4335 3547 50  0000 R CNN
F 2 "Tactile_Switch:Tactile_Switch" H 4380 3795 50  0001 C CNN
F 3 "~" H 4380 3795 50  0001 C CNN
	1    4380 3595
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4760 3495 4760 3395
Wire Wire Line
	4760 3395 4380 3395
Connection ~ 4380 3395
Wire Wire Line
	4380 3795 4760 3795
Wire Wire Line
	4760 3795 4760 3695
Connection ~ 4380 3795
Wire Wire Line
	3425 3270 3745 3270
Connection ~ 3425 3270
Wire Wire Line
	3425 3270 3425 3395
Text GLabel 3745 3270 2    39   Input ~ 0
BOOT
Text GLabel 4700 3275 2    39   Input ~ 0
RESET
Wire Wire Line
	4380 3275 4700 3275
Wire Wire Line
	4380 3175 4380 3275
Connection ~ 4380 3275
Wire Wire Line
	4380 3275 4380 3395
Text GLabel 770  1335 0    39   Input ~ 0
RESET
Wire Wire Line
	900  1335 770  1335
Text GLabel 2275 1335 2    39   Input ~ 0
BOOT
Wire Wire Line
	2100 1335 2275 1335
Text GLabel 2275 1435 2    39   Input ~ 0
TX
Text GLabel 2275 1635 2    39   Input ~ 0
RX
Wire Wire Line
	2100 1635 2275 1635
Wire Wire Line
	2100 1435 2275 1435
Text GLabel 1500 1135 1    39   Input ~ 0
3V3_IN
Text GLabel 2155 4410 0    39   Input ~ 0
3V3_ISOLATED
Text GLabel 2635 4540 2    39   Input ~ 0
3V3_IN
Text GLabel 2155 4665 0    39   Input ~ 0
3V3_REGULATED
Wire Wire Line
	2155 4410 2300 4410
Wire Wire Line
	2300 4410 2300 4540
Wire Wire Line
	2300 4665 2155 4665
Wire Wire Line
	2635 4540 2300 4540
Connection ~ 2300 4540
Wire Wire Line
	2300 4540 2300 4665
Text Notes 1875 5080 0    39   ~ 0
Don't connect 3V3_ISOLATED \nwhile board is powered by Battery
Text GLabel 3540 1585 1    39   Input ~ 0
3V3_IN
Wire Wire Line
	3445 1685 3540 1685
Wire Wire Line
	3540 1585 3540 1685
Connection ~ 3540 1685
Wire Wire Line
	3540 1685 3635 1685
Text Notes 9445 5490 0    157  ~ 31
Temperature Sensor (DS18S20Z+)
Text Notes 5235 795  0    157  ~ 31
3 Phased Gate MOSFET Switches
Wire Notes Line
	6970 470  6975 470 
Wire Notes Line
	9420 4910 9420 4920
Wire Notes Line
	9425 920  9425 925 
Wire Wire Line
	5675 4695 5590 4695
Wire Wire Line
	8475 2995 8475 2885
Wire Wire Line
	7140 3020 7140 2880
Connection ~ 5775 3025
Connection ~ 7140 3020
Text Notes 3325 1240 0    59   ~ 0
Decoupling caps, \nkeep close to\npower pins\n
Wire Notes Line width 10
	2970 4060 5155 4060
Wire Notes Line width 10
	2970 2410 5155 2410
Wire Notes Line width 10
	490  4245 2975 4245
Wire Notes Line width 10
	2970 2410 2970 5145
$Comp
L AS5600-ASOT:AS5600-ASOT U2
U 1 1 6180CBD6
P 2205 6345
F 0 "U2" H 2805 6610 50  0000 C CNN
F 1 "AS5600-ASOT" H 2805 6519 50  0000 C CNN
F 2 "AS5600:AS5600" H 3255 6445 50  0001 L CNN
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
L Device:C_Small C1
U 1 1 61815CDE
P 1330 6550
F 0 "C1" V 1545 6550 50  0000 C CNN
F 1 "100 nF" V 1450 6550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1330 6550 50  0001 C CNN
F 3 "~" H 1330 6550 50  0001 C CNN
	1    1330 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2205 6645 2135 6645
Wire Wire Line
	2135 6645 2135 6745
$Comp
L power:GND #PWR04
U 1 1 6183198C
P 2135 6745
F 0 "#PWR04" H 2135 6495 50  0001 C CNN
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
L power:GND #PWR01
U 1 1 6186F8DF
P 1330 6720
F 0 "#PWR01" H 1330 6470 50  0001 C CNN
F 1 "GND" V 1330 6530 50  0000 C CNN
F 2 "" H 1330 6720 50  0001 C CNN
F 3 "" H 1330 6720 50  0001 C CNN
	1    1330 6720
	1    0    0    -1  
$EndComp
Text Notes 1190 6795 1    59   ~ 0
Decoupling cap,\nkeep close to\npower pins\n
Text GLabel 3425 2980 1    39   Input ~ 0
3V3_IN
Text GLabel 4380 2975 1    39   Input ~ 0
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
L Device:R_Small_US R3
U 1 1 618149BB
P 3700 6125
F 0 "R3" H 3768 6171 50  0000 L CNN
F 1 "4.7k" H 3768 6080 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3700 6125 50  0001 C CNN
F 3 "~" H 3700 6125 50  0001 C CNN
	1    3700 6125
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R2
U 1 1 61811B61
P 3585 6125
F 0 "R2" H 3660 6080 50  0000 L CNN
F 1 "4.7k" H 3650 6170 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3585 6125 50  0001 C CNN
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
Text Notes 1225 5475 0    157  ~ 31
Magnetic Encoder (AS5600)
Wire Notes Line width 20
	485  7405 5150 7405
Text Notes 4145 6615 0    39   ~ 0
ENC_DIR -> GND, \nthen Clockwise\n\nENC_DIR -> VDD, \nthen Counter Clockwise
Text GLabel 2275 1835 2    39   Input ~ 0
ENC_SDA
Wire Wire Line
	2100 1835 2275 1835
Text GLabel 2275 2535 2    39   Input ~ 0
ENC_SCL
Wire Wire Line
	2100 2535 2275 2535
Text GLabel 2275 2435 2    39   Input ~ 0
ENC_DIR
Text GLabel 2275 2335 2    39   Input ~ 0
ENC_OUT
Wire Wire Line
	2100 2335 2275 2335
Wire Wire Line
	2275 2435 2100 2435
$Comp
L Regulator_Switching:LM2672M-3.3 U3
U 1 1 6131BA8C
P 3075 8680
F 0 "U3" H 3075 9147 50  0000 C CNN
F 1 "LM2672M-3.3" H 3075 9056 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3125 8330 50  0001 L CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm2672.pdf" H 3075 8680 50  0001 C CNN
	1    3075 8680
	-1   0    0    -1  
$EndComp
Text Notes 1190 7775 0    157  ~ 31
Power Supply (VIN to 3.3V)
$Comp
L power:GND #PWR06
U 1 1 61396B76
P 3075 9290
F 0 "#PWR06" H 3075 9040 50  0001 C CNN
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
L power:GND #PWR010
U 1 1 61425A4E
P 3980 9300
F 0 "#PWR010" H 3980 9050 50  0001 C CNN
F 1 "GND" V 3980 9110 50  0000 C CNN
F 2 "" H 3980 9300 50  0001 C CNN
F 3 "" H 3980 9300 50  0001 C CNN
	1    3980 9300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6143826A
P 2370 8780
F 0 "C3" H 2220 8770 50  0000 C CNN
F 1 "50V 0.01uF " H 2360 8920 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2370 8780 50  0001 C CNN
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
L power:GND #PWR03
U 1 1 614ACA2E
P 1615 9335
F 0 "#PWR03" H 1615 9085 50  0001 C CNN
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
L power:GND #PWR05
U 1 1 61562ED3
P 2370 9285
F 0 "#PWR05" H 2370 9035 50  0001 C CNN
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
F 2 "8D43_Inductor:8D43" H 1990 8880 50  0001 C CNN
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
F 2 "Diode_SMD:D_0603_1608Metric" H 2370 9105 50  0001 C CNN
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
Text Notes 9610 785  0    157  ~ 31
DRV8305 - Gate Driver
$Comp
L Device:C C24
U 1 1 6135FBF8
P 14095 2875
F 0 "C24" H 13935 2865 50  0000 C CNN
F 1 "1uF 6.3V" H 13930 2970 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14133 2725 50  0001 C CNN
F 3 "~" H 14095 2875 50  0001 C CNN
	1    14095 2875
	-1   0    0    1   
$EndComp
Text Notes 12650 3425 0    39   ~ 0
SO1, SO2 and SO3 are current amplifier output pins
Text Notes 12655 3635 0    39   ~ 0
SP1, SP2 and SP3 are positive current sense\ninput pins for amplifers 1,2 and 3 respectively\n
Text Notes 13370 670  0    39   ~ 0
VCPH - High Side Gate Driver regulator\nVCP_LSD - Low SIde Gate Driver regulator
Text GLabel 11435 1265 1    39   Input ~ 0
DRV_HG_reg
Text GLabel 11535 1265 1    39   Input ~ 0
DRV_LG_reg
Text GLabel 11135 1265 1    39   Input ~ 0
PVDD
Text GLabel 13645 1590 3    39   Input ~ 0
PVDD
Text GLabel 13645 1170 1    39   Input ~ 0
DRV_HG_reg
Text GLabel 14230 1170 1    39   Input ~ 0
DRV_LG_reg
$Comp
L power:GND #PWR025
U 1 1 61596AC8
P 14230 1610
F 0 "#PWR025" H 14230 1360 50  0001 C CNN
F 1 "GND" H 14235 1437 50  0000 C CNN
F 2 "" H 14230 1610 50  0001 C CNN
F 3 "" H 14230 1610 50  0001 C CNN
	1    14230 1610
	1    0    0    -1  
$EndComp
Wire Wire Line
	13645 1170 13645 1240
Wire Wire Line
	13645 1540 13645 1590
Wire Wire Line
	14230 1540 14230 1610
Wire Wire Line
	14230 1240 14230 1170
Text GLabel 11335 1265 1    39   Input ~ 0
CP2H
Text GLabel 11235 1265 1    39   Input ~ 0
CP2L
Text GLabel 14995 1055 1    39   Input ~ 0
CP1H
Text GLabel 14995 1470 3    39   Input ~ 0
CP1L
Text GLabel 10935 1265 1    39   Input ~ 0
CP1H
Text GLabel 11035 1265 1    39   Input ~ 0
CP1L
Wire Wire Line
	11535 1455 11535 1265
Wire Wire Line
	11435 1455 11435 1265
Wire Wire Line
	11335 1455 11335 1265
Wire Wire Line
	11235 1455 11235 1265
Wire Wire Line
	11135 1455 11135 1265
Wire Wire Line
	10435 1455 10435 1265
Wire Wire Line
	10735 1455 10735 1265
Wire Wire Line
	11035 1455 11035 1265
Wire Wire Line
	10935 1455 10935 1265
$Comp
L Device:C C27
U 1 1 6191E71A
P 14995 1260
F 0 "C27" H 15110 1306 50  0000 L CNN
F 1 "0.047uF" H 15110 1215 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15033 1110 50  0001 C CNN
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
L Device:C C29
U 1 1 6198BEA1
P 15525 1255
F 0 "C29" H 15640 1301 50  0000 L CNN
F 1 "0.047uF" H 15640 1210 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15563 1105 50  0001 C CNN
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
L power:GND #PWR019
U 1 1 61A45317
P 10735 1265
F 0 "#PWR019" H 10735 1015 50  0001 C CNN
F 1 "GND" H 10740 1092 50  0000 C CNN
F 2 "" H 10735 1265 50  0001 C CNN
F 3 "" H 10735 1265 50  0001 C CNN
	1    10735 1265
	-1   0    0    1   
$EndComp
Text Notes 2225 9695 0    39   ~ 0
do2014ac footprint
Wire Wire Line
	1615 8880 1615 8970
$Comp
L Device:R R13
U 1 1 614CBA09
P 15105 2650
F 0 "R13" H 14940 2585 50  0000 L CNN
F 1 "100" H 14905 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15035 2650 50  0001 C CNN
F 3 "~" H 15105 2650 50  0001 C CNN
	1    15105 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 613CEC5C
P 13410 3030
F 0 "#PWR023" H 13410 2780 50  0001 C CNN
F 1 "GND" H 13415 2857 50  0000 C CNN
F 2 "" H 13410 3030 50  0001 C CNN
F 3 "" H 13410 3030 50  0001 C CNN
	1    13410 3030
	1    0    0    -1  
$EndComp
Text GLabel 10635 4245 3    39   Input ~ 0
DRV_AVDD
Text GLabel 10435 1265 1    39   Input ~ 0
DRV_VREG
Text GLabel 15675 2635 1    39   Input ~ 0
DRV_DVDD
Text GLabel 13410 2590 1    39   Input ~ 0
DRV_VREG
Wire Wire Line
	10635 1455 10635 1275
Text GLabel 10635 1275 1    39   Input ~ 0
DRV_DVDD
$Comp
L DRV8305NPHPR:DRV8305NPHPR IC1
U 1 1 61052D6F
P 10135 2255
F 0 "IC1" H 10940 1915 50  0000 L CNN
F 1 "DRV8305NPHPR" H 10720 1670 50  0000 L CNN
F 2 "DRV8305NPHPR:DRV8305NPHPR" H 11685 2855 50  0001 L CNN
F 3 "http://www.mouser.com/ds/2/405/drv8305-768621.pdf" H 11685 2755 50  0001 L CNN
F 4 "Motor / Motion / Ignition Controllers & Drivers Three Phase Gate Driver with Three Integrated Current Shunt Amplifiers 48-HTQFP -40 to 125" H 11685 2655 50  0001 L CNN "Description"
F 5 "1.2" H 11685 2555 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 11685 2455 50  0001 L CNN "Manufacturer_Name"
F 7 "DRV8305NPHPR" H 11685 2355 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-DRV8305NPHPR" H 11685 2255 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/DRV8305NPHPR?qs=kFLL9AfgRSDaehWhXenR2Q%3D%3D" H 11685 2155 50  0001 L CNN "Mouser Price/Stock"
F 10 "DRV8305NPHPR" H 11685 2055 50  0001 L CNN "Arrow Part Number"
F 11 "https://www.arrow.com/en/products/drv8305nphpr/texas-instruments" H 11685 1955 50  0001 L CNN "Arrow Price/Stock"
	1    10135 2255
	1    0    0    -1  
$EndComp
Wire Wire Line
	10535 4055 10535 4115
$Comp
L power:GND #PWR028
U 1 1 615B2683
P 15675 3040
F 0 "#PWR028" H 15675 2790 50  0001 C CNN
F 1 "GND" H 15680 2867 50  0000 C CNN
F 2 "" H 15675 3040 50  0001 C CNN
F 3 "" H 15675 3040 50  0001 C CNN
	1    15675 3040
	1    0    0    -1  
$EndComp
Wire Wire Line
	13410 2590 13410 2660
Wire Wire Line
	13410 2960 13410 3030
Wire Wire Line
	15675 3040 15675 2975
Wire Wire Line
	15675 2635 15675 2675
Text Notes 15500 2265 0    39   ~ 0
DRV_DVDD: 3.3V \ninternal digital\nsupply regulator
Text Notes 12600 3145 0    39   ~ 0
Connect with-> \n3.3V or 5V, 50-mA LDO; \n  connect 1-µF to GND\nReference voltage; \n    LDO disabled
Text GLabel 15105 2895 3    39   Input ~ 0
VDRAIN
Text GLabel 12720 990  1    39   Input ~ 0
PVDD
$Comp
L Device:C C21
U 1 1 6169BF2D
P 12720 1205
F 0 "C21" H 12550 1210 50  0000 C CNN
F 1 "4.7uF" H 12535 1310 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12758 1055 50  0001 C CNN
F 3 "~" H 12720 1205 50  0001 C CNN
	1    12720 1205
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 6169BF33
P 12720 1485
F 0 "#PWR021" H 12720 1235 50  0001 C CNN
F 1 "GND" H 12725 1312 50  0000 C CNN
F 2 "" H 12720 1485 50  0001 C CNN
F 3 "" H 12720 1485 50  0001 C CNN
	1    12720 1485
	1    0    0    -1  
$EndComp
Wire Wire Line
	12720 1355 12720 1485
Wire Wire Line
	12720 990  12720 1055
Wire Wire Line
	10835 1455 10835 1265
Text GLabel 10835 1265 1    39   Input ~ 0
VDRAIN
Text GLabel 15105 2435 1    39   Input ~ 0
PVDD
Wire Wire Line
	15105 2500 15105 2435
Wire Wire Line
	15105 2895 15105 2800
Text GLabel 6975 1160 0    39   Input ~ 0
PVDD
Text GLabel 8300 1175 0    39   Input ~ 0
PVDD
Wire Wire Line
	10635 4245 10635 4055
Text GLabel 14095 2660 1    39   Input ~ 0
DRV_AVDD
Wire Wire Line
	14095 2660 14095 2725
NoConn ~ 10535 1455
Text GLabel 11435 4245 3    39   Input ~ 0
SN1
Text GLabel 6470 6510 3    39   Input ~ 0
SP2
Text GLabel 11235 4245 3    39   Input ~ 0
SN2
Text GLabel 11035 4245 3    39   Input ~ 0
SN3
Text GLabel 7400 6505 3    39   Input ~ 0
SP3
Text GLabel 11535 4245 3    39   Input ~ 0
SP1
Text GLabel 11335 4245 3    39   Input ~ 0
SP2
Text GLabel 11135 4245 3    39   Input ~ 0
SP3
Text GLabel 10735 4245 3    39   Input ~ 0
SO1
Text GLabel 10835 4245 3    39   Input ~ 0
SO2
Text GLabel 10935 4245 3    39   Input ~ 0
SO3
Wire Wire Line
	10835 4245 10835 4055
Wire Wire Line
	10735 4245 10735 4055
Wire Wire Line
	10935 4245 10935 4055
Wire Wire Line
	11035 4245 11035 4055
Wire Wire Line
	11235 4245 11235 4055
Wire Wire Line
	11135 4245 11135 4055
Wire Wire Line
	11335 4245 11335 4055
Wire Wire Line
	11435 4245 11435 4055
Wire Wire Line
	11535 4245 11535 4055
Wire Wire Line
	6470 6350 6470 6400
Wire Wire Line
	7400 6345 7400 6405
Text GLabel 12025 2255 2    39   Input ~ 0
GHA
Text GLabel 12025 2355 2    39   Input ~ 0
SHA
Text GLabel 12025 2455 2    39   Input ~ 0
SLA
Text GLabel 12025 2555 2    39   Input ~ 0
GLA
Wire Wire Line
	12025 2555 11835 2555
Wire Wire Line
	12025 2355 11835 2355
Wire Wire Line
	12025 2455 11835 2455
Wire Wire Line
	12025 2255 11835 2255
Text GLabel 12025 2655 2    39   Input ~ 0
GHB
Text GLabel 12025 2755 2    39   Input ~ 0
SHB
Text GLabel 12025 2855 2    39   Input ~ 0
SLB
Text GLabel 12025 2955 2    39   Input ~ 0
GLB
Wire Wire Line
	12025 2955 11835 2955
Wire Wire Line
	12025 2755 11835 2755
Wire Wire Line
	12025 2855 11835 2855
Wire Wire Line
	12025 2655 11835 2655
Text GLabel 12025 3055 2    39   Input ~ 0
GHC
Text GLabel 12025 3155 2    39   Input ~ 0
SHC
Text GLabel 12025 3255 2    39   Input ~ 0
SLC
Text GLabel 12025 3355 2    39   Input ~ 0
GLC
Wire Wire Line
	12025 3355 11835 3355
Wire Wire Line
	12025 3155 11835 3155
Wire Wire Line
	12025 3255 11835 3255
Wire Wire Line
	12025 3055 11835 3055
Text GLabel 6035 2790 2    39   Input ~ 0
GHA
Text GLabel 5590 3025 0    39   Input ~ 0
SHA
Text GLabel 5590 4695 0    39   Input ~ 0
SLA
Text GLabel 6020 4695 2    39   Input ~ 0
GLA
Text GLabel 7400 2760 2    39   Input ~ 0
GHB
Text GLabel 6940 3020 0    39   Input ~ 0
SHB
Text GLabel 8735 2775 2    39   Input ~ 0
GHC
Text GLabel 8300 2995 0    39   Input ~ 0
SHC
Text GLabel 9945 3355 0    39   Input ~ 0
DRV_SPI_CLK
Text GLabel 9945 3255 0    39   Input ~ 0
DRV_SPI_MISO
Text GLabel 9945 3155 0    39   Input ~ 0
DRV_SPI_MOSI
Text GLabel 9945 3055 0    39   Input ~ 0
DRV_SPI_nSCS
Wire Wire Line
	9945 3055 10135 3055
Wire Wire Line
	9945 3255 10135 3255
Wire Wire Line
	9945 3155 10135 3155
Wire Wire Line
	9945 3355 10135 3355
Text GLabel 9945 2955 0    39   Input ~ 0
DRV_nFAULT
Text GLabel 9945 2855 0    39   Input ~ 0
DRV_LC
Text GLabel 9945 2755 0    39   Input ~ 0
DRV_HC
Text GLabel 9945 2655 0    39   Input ~ 0
DRV_LB
Wire Wire Line
	9945 2655 10135 2655
Wire Wire Line
	9945 2855 10135 2855
Wire Wire Line
	9945 2755 10135 2755
Wire Wire Line
	9945 2955 10135 2955
Text GLabel 9945 2555 0    39   Input ~ 0
DRV_HB
Text GLabel 9945 2455 0    39   Input ~ 0
DRV_LA
Text GLabel 9945 2355 0    39   Input ~ 0
DRV_HA
Text GLabel 9945 2255 0    39   Input ~ 0
DRV_EN_GATE
Wire Wire Line
	9945 2255 10135 2255
Wire Wire Line
	9945 2455 10135 2455
Wire Wire Line
	9945 2355 10135 2355
Wire Wire Line
	9945 2555 10135 2555
Wire Notes Line width 20
	9395 5145 16085 5145
Wire Notes Line
	16070 5145 16070 5150
Wire Notes Line
	16060 2040 16060 2025
Wire Notes Line width 10
	13305 500  13305 2050
Wire Notes Line
	12380 5145 12375 5145
Wire Notes Line
	15205 5140 15200 5140
Text GLabel 2290 2135 2    39   Input ~ 0
DRV_SPI_CLK
Text GLabel 2290 1935 2    39   Input ~ 0
DRV_SPI_MISO
Text GLabel 2290 2035 2    39   Input ~ 0
DRV_SPI_MOSI
Text GLabel 2290 3335 2    39   Input ~ 0
DRV_SPI_nSCS
Wire Wire Line
	2290 3335 2100 3335
Wire Wire Line
	2290 1935 2100 1935
Wire Wire Line
	2290 2035 2100 2035
Wire Wire Line
	2290 2135 2100 2135
Text GLabel 2290 3535 2    39   Input ~ 0
DRV_nFAULT
Text GLabel 2290 3135 2    39   Input ~ 0
DRV_LC
Text GLabel 2290 3035 2    39   Input ~ 0
DRV_HC
Text GLabel 2290 2935 2    39   Input ~ 0
DRV_LB
Wire Wire Line
	2290 2935 2100 2935
Wire Wire Line
	2290 3135 2100 3135
Wire Wire Line
	2290 3035 2100 3035
Wire Wire Line
	2290 3535 2100 3535
Text GLabel 2290 2835 2    39   Input ~ 0
DRV_HB
Text GLabel 2290 2735 2    39   Input ~ 0
DRV_LA
Text GLabel 2290 2635 2    39   Input ~ 0
DRV_HA
Text GLabel 2290 3235 2    39   Input ~ 0
DRV_EN_GATE
Wire Wire Line
	2290 3235 2100 3235
Wire Wire Line
	2290 2735 2100 2735
Wire Wire Line
	2290 2635 2100 2635
Wire Wire Line
	2290 2835 2100 2835
Text GLabel 14420 3855 1    39   Input ~ 0
DRV_VREG
$Comp
L Device:R R11
U 1 1 623A6BA6
P 14420 4155
F 0 "R11" H 14490 4201 50  0000 L CNN
F 1 "10k" H 14480 4110 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14350 4155 50  0001 C CNN
F 3 "~" H 14420 4155 50  0001 C CNN
	1    14420 4155
	1    0    0    -1  
$EndComp
Wire Wire Line
	10435 4245 10435 4055
Wire Wire Line
	14420 3855 14420 4005
Text GLabel 10435 4245 3    39   Input ~ 0
PWR_GD
Wire Notes Line width 10
	14320 3285 14320 5155
Wire Notes Line
	13675 5145 13680 5145
Wire Notes Line
	14540 5150 14555 5150
Text Notes 14370 3455 0    39   ~ 0
DRV_nFAULT: Fault\nIndicator and LED
Text Notes 13875 2260 0    39   ~ 0
5-V internal analog \nsupply regulator\nbypass capacitor
Text Notes 14590 2150 0    39   ~ 0
High Side MOSFET Drain
Wire Wire Line
	7400 5860 7400 5990
Text GLabel 7400 5860 1    39   Input ~ 0
SN3
$Comp
L Device:C C14
U 1 1 6132F188
P 7400 6195
F 0 "C14" H 7400 6270 50  0000 L CNN
F 1 "1nF" H 7425 6100 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7438 6045 50  0001 C CNN
F 3 "~" H 7400 6195 50  0001 C CNN
	1    7400 6195
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 6132E765
P 6470 6200
F 0 "C12" H 6470 6275 50  0000 L CNN
F 1 "1nF" H 6495 6105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6508 6050 50  0001 C CNN
F 3 "~" H 6470 6200 50  0001 C CNN
	1    6470 6200
	1    0    0    -1  
$EndComp
Wire Notes Line width 10
	12565 2040 16065 2040
Wire Notes Line width 10
	12565 3275 16065 3275
Text Notes 12610 2275 0    39   ~ 0
DRV_VREG:  Internal\namplifier reference \nvoltage and SDO pullup.
Wire Wire Line
	5975 2790 6035 2790
Wire Wire Line
	7040 2760 7140 2760
Wire Wire Line
	7340 2760 7400 2760
Wire Wire Line
	8675 2775 8735 2775
Wire Wire Line
	8375 2775 8475 2775
Connection ~ 8475 2775
Wire Wire Line
	8475 2775 8575 2775
Connection ~ 8475 2995
Wire Wire Line
	7140 2760 7240 2760
Connection ~ 7140 2760
Wire Wire Line
	5675 2790 5775 2790
Wire Wire Line
	5775 2790 5775 2905
Connection ~ 5775 2790
Wire Wire Line
	5775 2790 5875 2790
Text Notes 4100 8400 0    59   ~ 0
Input Voltage-\n8V to 40V
Text Notes 745  8790 0    59   ~ 0
Output Voltage-\n3.3V 1A
Wire Wire Line
	14420 4470 14420 4365
Text GLabel 14845 3800 1    39   Input ~ 0
DRV_VREG
$Comp
L Device:R R12
U 1 1 614B52B7
P 14845 4450
F 0 "R12" H 14915 4496 50  0000 L CNN
F 1 "330" H 14905 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14775 4450 50  0001 C CNN
F 3 "~" H 14845 4450 50  0001 C CNN
	1    14845 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 614C1AF2
P 14845 4055
F 0 "D4" V 14885 3975 50  0000 R CNN
F 1 "LED" V 14795 3975 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 14845 4055 50  0001 C CNN
F 3 "~" H 14845 4055 50  0001 C CNN
	1    14845 4055
	0    -1   -1   0   
$EndComp
Text GLabel 14845 4675 3    39   Input ~ 0
DRV_nFAULT
Wire Wire Line
	14845 4675 14845 4600
Wire Wire Line
	14845 3800 14845 3905
Wire Wire Line
	14845 4205 14845 4300
Text Notes 15110 3505 0    39   ~ 0
PWRGD: Power Good DRV_VREG \nand MCU watchdog  fault \nindication and LED
Wire Wire Line
	15255 4615 15255 4400
Text GLabel 15255 4615 3    39   Input ~ 0
PWR_GD
Wire Wire Line
	15255 3910 15255 4065
$Comp
L Device:R R14
U 1 1 623A8C63
P 15255 4215
F 0 "R14" H 15325 4261 50  0000 L CNN
F 1 "10k" H 15315 4170 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15185 4215 50  0001 C CNN
F 3 "~" H 15255 4215 50  0001 C CNN
	1    15255 4215
	1    0    0    -1  
$EndComp
Text GLabel 15255 3910 1    39   Input ~ 0
DRV_VREG
Wire Notes Line width 10
	15070 3295 15070 5170
Text GLabel 4610 1370 1    39   Input ~ 0
3V3_IN
$Comp
L Device:R R5
U 1 1 6157BAD1
P 4610 1940
F 0 "R5" H 4680 1986 50  0000 L CNN
F 1 "330" H 4670 1895 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4540 1940 50  0001 C CNN
F 3 "~" H 4610 1940 50  0001 C CNN
	1    4610 1940
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 6157BAD7
P 4610 1590
F 0 "D2" V 4649 1473 50  0000 R CNN
F 1 "LED" V 4558 1473 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4610 1590 50  0001 C CNN
F 3 "~" H 4610 1590 50  0001 C CNN
	1    4610 1590
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4610 2145 4610 2090
Wire Wire Line
	4610 1370 4610 1440
Wire Wire Line
	4610 1740 4610 1790
$Comp
L power:GND #PWR012
U 1 1 615D1ABD
P 4610 2145
F 0 "#PWR012" H 4610 1895 50  0001 C CNN
F 1 "GND" H 4615 1972 50  0000 C CNN
F 2 "" H 4610 2145 50  0001 C CNN
F 3 "" H 4610 2145 50  0001 C CNN
	1    4610 2145
	1    0    0    -1  
$EndComp
Text Notes 4165 1070 0    59   ~ 0
3.3V Input Power LED\n
Wire Notes Line width 10
	2970 2405 2970 950 
Wire Notes Line width 10
	2970 945  5150 945 
Wire Notes Line width 10
	4130 960  4130 2420
Wire Notes Line
	4135 2405 4130 2405
Wire Notes Line width 10
	12560 495  12560 5120
Wire Notes Line width 10
	14520 3265 14520 2025
Wire Notes Line
	14085 2040 14080 2040
Text Notes 12615 675  0    39   ~ 0
PVDD: Power Bypass \nCapacitor and LED
Text Notes 7340 350  0    236  ~ 47
TitanLegs
Wire Wire Line
	7715 1290 7775 1290
$Comp
L power:GND #PWR015
U 1 1 6185706E
P 7775 1290
F 0 "#PWR015" H 7775 1040 50  0001 C CNN
F 1 "GND" H 7780 1117 50  0000 C CNN
F 2 "" H 7775 1290 50  0001 C CNN
F 3 "" H 7775 1290 50  0001 C CNN
	1    7775 1290
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 61857074
P 7565 1290
F 0 "C17" V 7500 1330 50  0000 L CNN
F 1 "0.01uF" V 7680 1110 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7603 1140 50  0001 C CNN
F 3 "~" H 7565 1290 50  0001 C CNN
	1    7565 1290
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C16
U 1 1 6185707A
P 7565 1035
F 0 "C16" V 7680 1081 50  0000 L CNN
F 1 "1uF" V 7680 910 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7603 885 50  0001 C CNN
F 3 "~" H 7565 1035 50  0001 C CNN
	1    7565 1035
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7775 1035 7775 1290
Connection ~ 7775 1290
Wire Wire Line
	9045 1300 9105 1300
$Comp
L power:GND #PWR017
U 1 1 61866337
P 9105 1300
F 0 "#PWR017" H 9105 1050 50  0001 C CNN
F 1 "GND" H 9110 1127 50  0000 C CNN
F 2 "" H 9105 1300 50  0001 C CNN
F 3 "" H 9105 1300 50  0001 C CNN
	1    9105 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 6186633D
P 8895 1300
F 0 "C20" V 8835 1350 50  0000 L CNN
F 1 "0.01uF" V 9010 1120 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8933 1150 50  0001 C CNN
F 3 "~" H 8895 1300 50  0001 C CNN
	1    8895 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C19
U 1 1 61866343
P 8895 1045
F 0 "C19" V 9010 1091 50  0000 L CNN
F 1 "1uF" V 9010 920 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8933 895 50  0001 C CNN
F 3 "~" H 8895 1045 50  0001 C CNN
	1    8895 1045
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9105 1045 9105 1300
Wire Wire Line
	8745 1045 8745 1175
Connection ~ 8745 1175
Wire Wire Line
	8745 1175 8745 1300
Wire Wire Line
	7415 1035 7415 1160
Connection ~ 7415 1160
Wire Wire Line
	7415 1160 7415 1290
Text GLabel 2290 3435 2    39   Input ~ 0
TEMP_DQ
Wire Wire Line
	2290 3435 2100 3435
NoConn ~ 900  2535
NoConn ~ 900  2635
NoConn ~ 900  2735
NoConn ~ 900  2835
NoConn ~ 900  2935
NoConn ~ 900  3035
NoConn ~ 2100 1735
NoConn ~ 2100 1535
$Comp
L DS18S20Z_:DS18S20Z+ U10
U 1 1 615F141B
P 11590 6505
F 0 "U10" H 11590 6972 50  0000 C CNN
F 1 "DS18S20Z+" H 11590 6881 50  0000 C CNN
F 2 "DS18S20Z_:DS18S20Z_" H 11590 6505 50  0001 L BNN
F 3 "" H 11590 6505 50  0001 L BNN
F 4 "3" H 11590 6505 50  0001 L BNN "PARTREV"
F 5 "IPC7351B" H 11590 6505 50  0001 L BNN "STANDARD"
F 6 "Maxim Integrated" H 11590 6505 50  0001 L BNN "MANUFACTURER"
	1    11590 6505
	1    0    0    -1  
$EndComp
Text GLabel 10700 6505 0    39   Input ~ 0
TEMP_DQ
Wire Wire Line
	10700 6505 10890 6505
Wire Wire Line
	12290 6305 12450 6305
Text GLabel 12450 6305 2    39   Input ~ 0
3V3_IN
$Comp
L power:GND #PWR020
U 1 1 6163356A
P 12365 6915
F 0 "#PWR020" H 12365 6665 50  0001 C CNN
F 1 "GND" V 12365 6725 50  0000 C CNN
F 2 "" H 12365 6915 50  0001 C CNN
F 3 "" H 12365 6915 50  0001 C CNN
	1    12365 6915
	1    0    0    -1  
$EndComp
Wire Wire Line
	12365 6705 12365 6915
Wire Wire Line
	12290 6705 12365 6705
Text Notes 12460 6865 0    59   ~ 0
DQ - 1 Wire Line \nCommunication Interface\n
Wire Notes Line width 20
	5165 9390 9390 9390
Text GLabel 9675 6815 3    39   Input ~ 0
TEMP_DQ
Wire Wire Line
	9675 6815 9675 6625
$Comp
L Device:R R9
U 1 1 616F04DA
P 9675 6475
F 0 "R9" H 9745 6521 50  0000 L CNN
F 1 "4.7k" H 9745 6430 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9605 6475 50  0001 C CNN
F 3 "~" H 9675 6475 50  0001 C CNN
	1    9675 6475
	1    0    0    -1  
$EndComp
Text GLabel 9675 6245 1    39   Input ~ 0
3V3_IN
Wire Wire Line
	9675 6245 9675 6325
Text Notes 9415 5895 0    50   ~ 0
DQ - External Pull-Up
Wire Notes Line
	9415 5735 10310 5735
Wire Notes Line
	10310 5735 10310 7425
Text Notes 12385 6100 0    59   ~ 0
Connect VDD to GND for\nParasite Power Mode:\nDeriving Power from DQ\nData line
Text GLabel 14420 4470 3    39   Input ~ 0
DRV_nFAULT
$Comp
L Device:C C26
U 1 1 61786B03
P 14580 4575
F 0 "C26" H 14600 4655 50  0000 L CNN
F 1 "0.1uF" H 14590 4475 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 14618 4425 50  0001 C CNN
F 3 "~" H 14580 4575 50  0001 C CNN
	1    14580 4575
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 617D0F35
P 14580 4790
F 0 "#PWR026" H 14580 4540 50  0001 C CNN
F 1 "GND" H 14585 4617 50  0000 C CNN
F 2 "" H 14580 4790 50  0001 C CNN
F 3 "" H 14580 4790 50  0001 C CNN
	1    14580 4790
	1    0    0    -1  
$EndComp
Wire Wire Line
	14580 4725 14580 4790
Wire Wire Line
	14580 4425 14580 4365
Wire Wire Line
	14580 4365 14420 4365
Connection ~ 14420 4365
Wire Wire Line
	14420 4365 14420 4305
$Comp
L Device:C C28
U 1 1 61844D5E
P 15415 4565
F 0 "C28" H 15435 4645 50  0000 L CNN
F 1 "0.1uF" H 15425 4465 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 15453 4415 50  0001 C CNN
F 3 "~" H 15415 4565 50  0001 C CNN
	1    15415 4565
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 61844D64
P 15415 4745
F 0 "#PWR027" H 15415 4495 50  0001 C CNN
F 1 "GND" H 15420 4572 50  0000 C CNN
F 2 "" H 15415 4745 50  0001 C CNN
F 3 "" H 15415 4745 50  0001 C CNN
	1    15415 4745
	1    0    0    -1  
$EndComp
Wire Wire Line
	15415 4715 15415 4745
Wire Wire Line
	15415 4415 15415 4400
Wire Wire Line
	15415 4400 15255 4400
Connection ~ 15255 4400
Wire Wire Line
	15255 4400 15255 4365
Text Notes 14555 2875 0    39   ~ 8
VDRAIN Should \nHave Low\nImpedance Path\nTo Drain Of The \nHigh-Side FETs
Wire Notes Line width 10
	15345 2050 15345 3290
Wire Notes Line width 10
	14765 475  14765 2045
Text GLabel 13060 920  1    39   Input ~ 0
PVDD
$Comp
L Device:R R10
U 1 1 619F841E
P 13060 1475
F 0 "R10" H 13130 1521 50  0000 L CNN
F 1 "5k" H 13120 1430 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 12990 1475 50  0001 C CNN
F 3 "~" H 13060 1475 50  0001 C CNN
	1    13060 1475
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 619F8424
P 13060 1125
F 0 "D3" V 13100 1045 50  0000 R CNN
F 1 "LED" V 13010 1045 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 13060 1125 50  0001 C CNN
F 3 "~" H 13060 1125 50  0001 C CNN
	1    13060 1125
	0    -1   -1   0   
$EndComp
Wire Wire Line
	13060 920  13060 975 
Wire Wire Line
	13060 1275 13060 1325
$Comp
L power:GND #PWR022
U 1 1 61A5015E
P 13060 1705
F 0 "#PWR022" H 13060 1455 50  0001 C CNN
F 1 "GND" H 13065 1532 50  0000 C CNN
F 2 "" H 13060 1705 50  0001 C CNN
F 3 "" H 13060 1705 50  0001 C CNN
	1    13060 1705
	1    0    0    -1  
$EndComp
Wire Wire Line
	13060 1625 13060 1705
Text GLabel 15760 3865 1    39   Input ~ 0
DRV_VREG
$Comp
L Device:R R15
U 1 1 61ACF9CE
P 15760 4445
F 0 "R15" H 15830 4491 50  0000 L CNN
F 1 "330" H 15820 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15690 4445 50  0001 C CNN
F 3 "~" H 15760 4445 50  0001 C CNN
	1    15760 4445
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D5
U 1 1 61ACF9D4
P 15760 4110
F 0 "D5" V 15800 4030 50  0000 R CNN
F 1 "LED" V 15710 4030 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 15760 4110 50  0001 C CNN
F 3 "~" H 15760 4110 50  0001 C CNN
	1    15760 4110
	0    -1   -1   0   
$EndComp
Text GLabel 15760 4685 3    39   Input ~ 0
PWR_GD
Wire Wire Line
	15760 3865 15760 3960
Wire Wire Line
	15760 4260 15760 4295
Wire Wire Line
	15760 4685 15760 4595
Wire Notes Line width 10
	13835 3260 13835 2020
Text GLabel 13515 4485 1    39   Input ~ 0
SO2
Text GLabel 14070 4485 1    39   Input ~ 0
SO3
NoConn ~ 2100 2235
Wire Wire Line
	13410 2660 13160 2660
Connection ~ 13410 2660
Text Notes 9470 4795 0    39   ~ 8
Operating Voltage for DRV8305 & MOSFETS:\n4.4 to 45 V (PVDD-Drain Voltage)\n
Text Notes 9475 4970 0    39   ~ 8
Peak Gate Driver Current:\n1 to 1.25 A
Text Notes 9505 1470 0    39   ~ 8
DRV_EN_GATE: Enables \ngate driver & current \nshunt amplifiers\n\nDVDD: 3.3V Internal\nVoltage Regulator\n\nAVDD: 5V Internal\nVoltage Regulator
Wire Wire Line
	5675 4695 5675 4625
Wire Wire Line
	5675 4695 5775 4695
Wire Wire Line
	5875 4695 5875 4625
Connection ~ 5675 4695
Wire Wire Line
	5775 4625 5775 4695
Connection ~ 5775 4695
Wire Wire Line
	5775 4695 5875 4695
Wire Wire Line
	5975 4625 5975 4695
Wire Wire Line
	5975 4695 6020 4695
Wire Wire Line
	7040 4690 6955 4690
Text GLabel 6955 4690 0    39   Input ~ 0
SLB
Text GLabel 7385 4690 2    39   Input ~ 0
GLB
Wire Wire Line
	7040 4690 7040 4620
Wire Wire Line
	7040 4690 7140 4690
Wire Wire Line
	7240 4690 7240 4620
Connection ~ 7040 4690
Wire Wire Line
	7140 4620 7140 4690
Connection ~ 7140 4690
Wire Wire Line
	7140 4690 7240 4690
Wire Wire Line
	7340 4620 7340 4690
Wire Wire Line
	7340 4690 7385 4690
Wire Wire Line
	8375 4665 8290 4665
Text GLabel 8290 4665 0    39   Input ~ 0
SLC
Text GLabel 8720 4665 2    39   Input ~ 0
GLC
Wire Wire Line
	8375 4665 8375 4595
Wire Wire Line
	8375 4665 8475 4665
Wire Wire Line
	8575 4665 8575 4595
Connection ~ 8375 4665
Wire Wire Line
	8475 4595 8475 4665
Connection ~ 8475 4665
Wire Wire Line
	8475 4665 8575 4665
Wire Wire Line
	8675 4595 8675 4665
Wire Wire Line
	8675 4665 8720 4665
Wire Notes Line
	12555 3905 14330 3905
Text GLabel 6470 5850 1    39   Input ~ 0
SN2
Wire Wire Line
	6470 5850 6470 5990
$Comp
L Device:R R7
U 1 1 618F710E
P 6755 6205
F 0 "R7" H 6825 6251 50  0000 L CNN
F 1 "5m" H 6825 6160 50  0000 L CNN
F 2 "Shunt_Resistor:Shunt_Resistor_L7.0mm_B4.0mm_H1.0mm" V 6685 6205 50  0001 C CNN
F 3 "~" H 6755 6205 50  0001 C CNN
	1    6755 6205
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61909B63
P 7670 6205
F 0 "R8" H 7740 6251 50  0000 L CNN
F 1 "5m" H 7740 6160 50  0000 L CNN
F 2 "Shunt_Resistor:Shunt_Resistor_L7.0mm_B4.0mm_H1.0mm" V 7600 6205 50  0001 C CNN
F 3 "~" H 7670 6205 50  0001 C CNN
	1    7670 6205
	1    0    0    -1  
$EndComp
Text GLabel 13515 4715 3    39   Input ~ 0
ISENB
Text GLabel 14070 4715 3    39   Input ~ 0
ISENC
Text GLabel 2290 3635 2    39   Input ~ 0
ISENA
Wire Wire Line
	2290 3635 2100 3635
Text GLabel 710  1535 0    39   Input ~ 0
ISENB
Wire Wire Line
	710  1535 900  1535
Text GLabel 710  1635 0    39   Input ~ 0
ISENC
Wire Wire Line
	710  1635 900  1635
Text Notes 5955 9730 0    157  ~ 31
Power Connector Pads\n
$Comp
L power:GND #PWR016
U 1 1 616C32F7
P 8375 6285
F 0 "#PWR016" H 8375 6035 50  0001 C CNN
F 1 "GND" V 8380 6157 50  0000 R CNN
F 2 "" H 8375 6285 50  0001 C CNN
F 3 "" H 8375 6285 50  0001 C CNN
	1    8375 6285
	1    0    0    -1  
$EndComp
Text GLabel 8145 5980 1    39   Input ~ 0
SP1
Wire Wire Line
	8145 5980 8145 6195
Text GLabel 8375 5980 1    39   Input ~ 0
SP2
Wire Wire Line
	8375 5980 8375 6195
Text GLabel 8610 5980 1    39   Input ~ 0
SP3
Wire Wire Line
	8610 5980 8610 6195
Wire Wire Line
	8610 6195 8375 6195
Connection ~ 8375 6195
Wire Wire Line
	8375 6195 8145 6195
Wire Wire Line
	8375 6285 8375 6195
Text GLabel 945  4385 2    39   Input ~ 0
POWER_IN
Wire Wire Line
	775  4385 945  4385
Text GLabel 775  4385 0    39   Input ~ 0
PVDD
Wire Notes Line width 10
	1485 4250 1485 5145
Text Notes 565  4615 0    39   ~ 0
PVDD i.e input to the Driver\nand the board
Text GLabel 13160 2660 0    39   Input ~ 0
3V3_IN
Wire Notes Line width 20
	9415 7405 13640 7405
Wire Notes Line width 20
	13620 9385 9395 9385
Wire Notes Line
	13640 9135 13625 9135
Wire Wire Line
	5675 4815 5675 4695
Text GLabel 5675 4815 3    39   Input ~ 0
SN1
Text GLabel 7040 4810 3    39   Input ~ 0
SN2
Wire Wire Line
	7040 4810 7040 4690
Wire Wire Line
	8375 4785 8375 4665
Text GLabel 8375 4785 3    39   Input ~ 0
SN3
Wire Wire Line
	13515 4485 13515 4715
Wire Wire Line
	14070 4485 14070 4715
Wire Wire Line
	12915 4480 12915 4715
Text GLabel 12915 4715 3    39   Input ~ 0
ISENA
$Comp
L Device:R R6
U 1 1 618F5060
P 5855 6210
F 0 "R6" H 5925 6256 50  0000 L CNN
F 1 "5m" H 5925 6165 50  0000 L CNN
F 2 "Shunt_Resistor:Shunt_Resistor_L7.0mm_B4.0mm_H1.0mm" V 5785 6210 50  0001 C CNN
F 3 "~" H 5855 6210 50  0001 C CNN
	1    5855 6210
	1    0    0    -1  
$EndComp
Text GLabel 12915 4480 1    39   Input ~ 0
SO1
Text GLabel 5520 6510 3    39   Input ~ 0
SP1
Wire Wire Line
	5520 6345 5520 6390
$Comp
L Device:C C8
U 1 1 6132DCA3
P 5520 6195
F 0 "C8" H 5530 6270 50  0000 L CNN
F 1 "1nF" H 5535 6110 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5558 6045 50  0001 C CNN
F 3 "~" H 5520 6195 50  0001 C CNN
	1    5520 6195
	1    0    0    -1  
$EndComp
Text GLabel 5520 5850 1    39   Input ~ 0
SN1
Wire Wire Line
	5520 5850 5520 5980
Text GLabel 6235 2905 2    39   Input ~ 0
MOT_A
Wire Wire Line
	5775 2905 6235 2905
Connection ~ 5775 2905
Wire Wire Line
	5775 2905 5775 3025
Text GLabel 7600 2880 2    39   Input ~ 0
MOT_B
Wire Wire Line
	7140 2880 7600 2880
Connection ~ 7140 2880
Wire Wire Line
	7140 2880 7140 2760
Text GLabel 8935 2885 2    39   Input ~ 0
MOT_C
Wire Wire Line
	8475 2885 8935 2885
Connection ~ 8475 2885
Wire Wire Line
	8475 2885 8475 2775
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 616FE4B3
P 10290 8440
F 0 "H5" H 10390 8489 50  0000 L CNN
F 1 "MountingHole_Pad" H 10390 8398 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 10290 8440 50  0001 C CNN
F 3 "~" H 10290 8440 50  0001 C CNN
	1    10290 8440
	1    0    0    -1  
$EndComp
Text GLabel 10290 8715 3    39   Input ~ 0
MOT_A
Wire Wire Line
	10290 8540 10290 8715
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 6173B6AB
P 11170 8440
F 0 "H8" H 11270 8489 50  0000 L CNN
F 1 "MountingHole_Pad" H 11270 8398 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 11170 8440 50  0001 C CNN
F 3 "~" H 11170 8440 50  0001 C CNN
	1    11170 8440
	1    0    0    -1  
$EndComp
Text GLabel 11170 8715 3    39   Input ~ 0
MOT_B
Wire Wire Line
	11170 8540 11170 8715
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 6176C92B
P 12035 8440
F 0 "H9" H 12135 8489 50  0000 L CNN
F 1 "MountingHole_Pad" H 12135 8398 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2_DIN965_Pad" H 12035 8440 50  0001 C CNN
F 3 "~" H 12035 8440 50  0001 C CNN
	1    12035 8440
	1    0    0    -1  
$EndComp
Text GLabel 12035 8715 3    39   Input ~ 0
MOT_C
Wire Wire Line
	12035 8540 12035 8715
Text Notes 9925 7745 0    157  ~ 31
Motor Connector Pads
Wire Notes Line width 21
	9375 7405 5155 7405
Wire Notes Line
	5155 7390 5155 7385
Text Notes 6000 5475 0    157  ~ 31
Additional Circuitry
Text Notes 3130 2640 0    118  ~ 24
Boot Reset Switches
Wire Wire Line
	7560 10260 7560 10435
Text GLabel 7560 10435 3    39   Input ~ 0
GND
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 61833E09
P 7560 10160
F 0 "H2" H 7660 10209 50  0000 L CNN
F 1 "MountingHole_Pad" H 7660 10118 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_DIN965_Pad" H 7560 10160 50  0001 C CNN
F 3 "~" H 7560 10160 50  0001 C CNN
	1    7560 10160
	1    0    0    -1  
$EndComp
Wire Wire Line
	6680 10260 6680 10435
Text GLabel 6680 10435 3    39   Input ~ 0
PVDD
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 61833E01
P 6680 10160
F 0 "H1" H 6780 10209 50  0000 L CNN
F 1 "MountingHole_Pad" H 6780 10118 50  0000 L CNN
F 2 "MountingHole:MountingHole_6.4mm_M6_DIN965_Pad" H 6680 10160 50  0001 C CNN
F 3 "~" H 6680 10160 50  0001 C CNN
	1    6680 10160
	1    0    0    -1  
$EndComp
Text Notes 13785 6495 0    82   ~ 16
LAYOUT GUIDELINES\n1. PWRGD not connected to MCU** (left NC in REV0)\n2. DVDD and AVDD bypass capacitors close to GND\n3. Flying jump caps close to pins\n4. PVDD cap close to PVDD suppply\n5. DRV_WAKE not connected (input from MCU) ** (100ohm to PVDD in REV0)\n6. VDRAIN Should Have Low Impedance Path To Drain Of The High-Side FETs\n7. To include reverse polarity protection ckt at input?** (done in DRV)\n(left NC in Janus)
Text Notes 9665 9730 0    157  ~ 31
Mounting Holes
$Comp
L Mechanical:MountingHole H3
U 1 1 61D5637F
P 9800 10155
F 0 "H3" H 9900 10201 50  0000 L CNN
F 1 "MountingHole" H 9900 10110 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm" H 9800 10155 50  0001 C CNN
F 3 "~" H 9800 10155 50  0001 C CNN
	1    9800 10155
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H7
U 1 1 61D56FDB
P 10595 10145
F 0 "H7" H 10695 10191 50  0000 L CNN
F 1 "MountingHole" H 10695 10100 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm" H 10595 10145 50  0001 C CNN
F 3 "~" H 10595 10145 50  0001 C CNN
	1    10595 10145
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61D6EFEF
P 9810 10620
F 0 "H4" H 9910 10666 50  0000 L CNN
F 1 "MountingHole" H 9910 10575 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm" H 9810 10620 50  0001 C CNN
F 3 "~" H 9810 10620 50  0001 C CNN
	1    9810 10620
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H6
U 1 1 61D86BD5
P 10590 10610
F 0 "H6" H 10690 10656 50  0000 L CNN
F 1 "MountingHole" H 10690 10565 50  0000 L CNN
F 2 "MountingHole:MountingHole_4mm" H 10590 10610 50  0001 C CNN
F 3 "~" H 10590 10610 50  0001 C CNN
	1    10590 10610
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C6
U 1 1 61D5E50D
P 3980 8805
F 0 "C6" H 4095 8851 50  0000 L CNN
F 1 "100uF 50V" H 4095 8760 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 3980 8805 50  0001 C CNN
F 3 "~" H 3980 8805 50  0001 C CNN
	1    3980 8805
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C2
U 1 1 61D77994
P 1615 9120
F 0 "C2" H 1730 9166 50  0000 L CNN
F 1 "68uF 10V" H 1730 9075 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x7.7" H 1615 9120 50  0001 C CNN
F 3 "~" H 1615 9120 50  0001 C CNN
	1    1615 9120
	1    0    0    -1  
$EndComp
Text Notes 795  10350 0    59   ~ 0
Note - 68uF not available
Wire Wire Line
	5855 6360 5855 6390
Wire Wire Line
	5855 6390 5520 6390
Connection ~ 5520 6390
Wire Wire Line
	5520 6390 5520 6510
Wire Wire Line
	5855 6060 5855 5980
Wire Wire Line
	5855 5980 5520 5980
Connection ~ 5520 5980
Wire Wire Line
	5520 5980 5520 6045
Wire Wire Line
	6755 6055 6755 5990
Wire Wire Line
	6755 5990 6470 5990
Connection ~ 6470 5990
Wire Wire Line
	6470 5990 6470 6050
Wire Wire Line
	6755 6355 6755 6400
Wire Wire Line
	6755 6400 6470 6400
Connection ~ 6470 6400
Wire Wire Line
	6470 6400 6470 6510
Wire Wire Line
	7670 6355 7670 6405
Wire Wire Line
	7670 6405 7400 6405
Connection ~ 7400 6405
Wire Wire Line
	7400 6405 7400 6505
Wire Wire Line
	7670 6055 7670 5990
Wire Wire Line
	7670 5990 7400 5990
Connection ~ 7400 5990
Wire Wire Line
	7400 5990 7400 6045
Text Notes 12660 3850 0    39   ~ 0
SN1, SN2 and SN3 are negative current sense \ninput pins for amplifers 1,2 and 3 respectively\n
Text Notes 12795 4145 0    39   ~ 8
Current Amplifier Output Pins going to\nADC Pins of ESP32 Microcontroller 
Text Notes 5605 8260 0    157  ~ 31
Power Filter & Decoupling \n        Capacitors\n\n
Text GLabel 7125 8275 1    39   Input ~ 0
PVDD
$Comp
L Device:CP1 C9
U 1 1 62297B6C
P 6120 8675
F 0 "C9" H 6235 8721 50  0000 L CNN
F 1 "330uF 50V" H 6235 8630 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 6120 8675 50  0001 C CNN
F 3 "~" H 6120 8675 50  0001 C CNN
	1    6120 8675
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C13
U 1 1 622989F4
P 6780 8670
F 0 "C13" H 6895 8716 50  0000 L CNN
F 1 "330uF 50V" H 6895 8625 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_10x10" H 6780 8670 50  0001 C CNN
F 3 "~" H 6780 8670 50  0001 C CNN
	1    6780 8670
	1    0    0    -1  
$EndComp
$Comp
L Device:C C15
U 1 1 622B2733
P 7440 8665
F 0 "C15" H 7555 8711 50  0000 L CNN
F 1 "10uF 50V" H 7555 8620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7478 8515 50  0001 C CNN
F 3 "~" H 7440 8665 50  0001 C CNN
	1    7440 8665
	1    0    0    -1  
$EndComp
$Comp
L Device:C C18
U 1 1 622B3131
P 8070 8665
F 0 "C18" H 8185 8711 50  0000 L CNN
F 1 "10uF 50V" H 8185 8620 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8108 8515 50  0001 C CNN
F 3 "~" H 8070 8665 50  0001 C CNN
	1    8070 8665
	1    0    0    -1  
$EndComp
Wire Wire Line
	7125 8275 7125 8345
Connection ~ 7125 8345
$Comp
L power:GND #PWR014
U 1 1 6243A692
P 7115 9035
F 0 "#PWR014" H 7115 8785 50  0001 C CNN
F 1 "GND" V 7120 8907 50  0000 R CNN
F 2 "" H 7115 9035 50  0001 C CNN
F 3 "" H 7115 9035 50  0001 C CNN
	1    7115 9035
	1    0    0    -1  
$EndComp
Wire Wire Line
	7115 9035 7115 8980
Connection ~ 7115 8980
Wire Wire Line
	8070 8980 8070 8815
Wire Wire Line
	7115 8980 7440 8980
Wire Wire Line
	8070 8515 8070 8345
Wire Wire Line
	7125 8345 7440 8345
Wire Wire Line
	7440 8515 7440 8345
Connection ~ 7440 8345
Wire Wire Line
	7440 8345 8070 8345
Wire Wire Line
	6780 8520 6780 8345
Connection ~ 6780 8345
Wire Wire Line
	6780 8345 7125 8345
Wire Wire Line
	6120 8525 6120 8345
Wire Wire Line
	6120 8345 6780 8345
Wire Wire Line
	6120 8825 6120 8980
Wire Wire Line
	6120 8980 6780 8980
Wire Wire Line
	6780 8820 6780 8980
Connection ~ 6780 8980
Wire Wire Line
	6780 8980 7115 8980
Wire Wire Line
	7440 8815 7440 8980
Connection ~ 7440 8980
Wire Wire Line
	7440 8980 8070 8980
Wire Notes Line width 20
	11800 11220 11800 9385
Wire Notes Line
	13625 9380 13645 9380
Wire Notes Line width 20
	13645 5180 13645 9380
Wire Wire Line
	8300 2995 8375 2995
Wire Wire Line
	8475 2995 8575 2995
Wire Wire Line
	5590 3025 5675 3025
Wire Wire Line
	5775 3025 5875 3025
Wire Wire Line
	6940 3020 7040 3020
Wire Wire Line
	7140 3020 7240 3020
Wire Wire Line
	6975 1160 7040 1160
Wire Wire Line
	8300 1175 8375 1175
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U8
U 1 1 61E1DEEF
P 8375 2775
F 0 "U8" V 9370 2675 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 9410 2215 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 9175 3015 60  0001 C CNN
F 3 "" H 8375 2775 60  0000 C CNN
	1    8375 2775
	0    -1   -1   0   
$EndComp
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U6
U 1 1 61E49D9F
P 7040 2760
F 0 "U6" V 8035 2675 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 8070 2200 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 7840 3000 60  0001 C CNN
F 3 "" H 7040 2760 60  0000 C CNN
	1    7040 2760
	0    -1   -1   0   
$EndComp
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U4
U 1 1 61E6472C
P 5675 2790
F 0 "U4" V 6665 2705 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 6710 2235 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 6475 3030 60  0001 C CNN
F 3 "" H 5675 2790 60  0000 C CNN
	1    5675 2790
	0    -1   -1   0   
$EndComp
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U9
U 1 1 61E85912
P 8375 4595
F 0 "U9" V 9345 4500 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 9410 4040 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 9175 4835 60  0001 C CNN
F 3 "" H 8375 4595 60  0000 C CNN
	1    8375 4595
	0    -1   -1   0   
$EndComp
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U7
U 1 1 61E85918
P 7040 4620
F 0 "U7" V 8020 4530 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 8080 4065 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 7840 4860 60  0001 C CNN
F 3 "" H 7040 4620 60  0000 C CNN
	1    7040 4620
	0    -1   -1   0   
$EndComp
$Comp
L CSD18532NQ5B:CSD18532NQ5BT U5
U 1 1 61E8591E
P 5675 4625
F 0 "U5" V 6675 4530 60  0000 R CNN
F 1 "CSD18532NQ5BT" H 6720 4065 60  0000 R CNN
F 2 "CSD18532NQ5B:CSD18532NQ5B" H 6475 4865 60  0001 C CNN
F 3 "" H 5675 4625 60  0000 C CNN
	1    5675 4625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6340 1330 6400 1330
$Comp
L power:GND #PWR013
U 1 1 6162F8AC
P 6400 1330
F 0 "#PWR013" H 6400 1080 50  0001 C CNN
F 1 "GND" H 6405 1157 50  0000 C CNN
F 2 "" H 6400 1330 50  0001 C CNN
F 3 "" H 6400 1330 50  0001 C CNN
	1    6400 1330
	1    0    0    -1  
$EndComp
Text GLabel 5600 1190 0    39   Input ~ 0
PVDD
$Comp
L Device:C C11
U 1 1 6162F8A6
P 6190 1330
F 0 "C11" V 6140 1385 50  0000 L CNN
F 1 "0.01uF" V 6305 1150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6228 1180 50  0001 C CNN
F 3 "~" H 6190 1330 50  0001 C CNN
	1    6190 1330
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C10
U 1 1 617B5988
P 6190 1075
F 0 "C10" V 6305 1121 50  0000 L CNN
F 1 "1uF" V 6305 950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6228 925 50  0001 C CNN
F 3 "~" H 6190 1075 50  0001 C CNN
	1    6190 1075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6040 1075 6040 1190
Connection ~ 6040 1190
Wire Wire Line
	6040 1190 6040 1330
Wire Wire Line
	6400 1075 6400 1330
Connection ~ 6400 1330
Wire Wire Line
	5600 1190 5675 1190
Connection ~ 5675 1190
Wire Wire Line
	5675 1190 5775 1190
Connection ~ 5775 1190
Wire Wire Line
	5775 1190 5875 1190
Connection ~ 5875 1190
Wire Wire Line
	5875 1190 5975 1190
Connection ~ 5975 1190
Wire Wire Line
	5975 1190 6040 1190
Wire Wire Line
	6340 1075 6400 1075
Connection ~ 7040 1160
Wire Wire Line
	7040 1160 7140 1160
Connection ~ 7140 1160
Wire Wire Line
	7140 1160 7240 1160
Connection ~ 7240 1160
Wire Wire Line
	7240 1160 7340 1160
Connection ~ 7340 1160
Wire Wire Line
	7340 1160 7415 1160
Wire Wire Line
	7715 1035 7775 1035
Connection ~ 8375 1175
Wire Wire Line
	8375 1175 8475 1175
Connection ~ 8475 1175
Wire Wire Line
	8475 1175 8575 1175
Connection ~ 8575 1175
Wire Wire Line
	8575 1175 8675 1175
Connection ~ 8675 1175
Wire Wire Line
	8675 1175 8745 1175
Wire Wire Line
	9045 1045 9105 1045
Wire Wire Line
	5675 3025 5775 3025
Connection ~ 5675 3025
Wire Wire Line
	5875 3025 5975 3025
Connection ~ 5875 3025
Wire Wire Line
	7040 3020 7140 3020
Connection ~ 7040 3020
Wire Wire Line
	7240 3020 7340 3020
Connection ~ 7240 3020
Wire Wire Line
	8375 2995 8475 2995
Connection ~ 8375 2995
Wire Wire Line
	8575 2995 8675 2995
Connection ~ 8575 2995
Connection ~ 9105 1300
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 61E67D4A
P 3845 4675
F 0 "J1" H 3905 4925 50  0000 L CNN
F 1 "Conn_01x06_Female" H 3900 4845 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3845 4675 50  0001 C CNN
F 3 "~" H 3845 4675 50  0001 C CNN
	1    3845 4675
	1    0    0    -1  
$EndComp
Text GLabel 3445 4475 0    39   Input ~ 0
DTR
Wire Wire Line
	3645 4475 3445 4475
Text GLabel 3445 4575 0    39   Input ~ 0
RX
Wire Wire Line
	3645 4575 3445 4575
Text GLabel 3445 4675 0    39   Input ~ 0
TX
Wire Wire Line
	3645 4675 3445 4675
Wire Wire Line
	3645 4775 3445 4775
Text GLabel 3445 4775 0    39   Input ~ 0
3V3_ISOLATED
Wire Wire Line
	3645 4975 3445 4975
$Comp
L power:GND #PWR0101
U 1 1 61ECD80C
P 3445 4975
F 0 "#PWR0101" H 3445 4725 50  0001 C CNN
F 1 "GND" V 3445 4785 50  0000 C CNN
F 2 "" H 3445 4975 50  0001 C CNN
F 3 "" H 3445 4975 50  0001 C CNN
	1    3445 4975
	0    1    1    0   
$EndComp
Text GLabel 3445 4875 0    39   Input ~ 0
CTS
Wire Wire Line
	3645 4875 3445 4875
Text Notes 3990 5020 0    59   ~ 0
3V3_ISOLATED is used to \npower ESP32 when board \nisn't being powered \nby VIN. (while \nprogramming)\n
Text Notes 3090 4265 0    118  ~ 24
Programming Port
Text GLabel 745  4810 0    39   Input ~ 0
DTR
Wire Wire Line
	945  4810 745  4810
Text GLabel 745  4935 0    39   Input ~ 0
CTS
Wire Wire Line
	945  4935 745  4935
NoConn ~ 945  4935
NoConn ~ 945  4810
$EndSCHEMATC
