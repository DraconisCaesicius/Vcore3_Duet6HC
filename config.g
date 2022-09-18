; Configuration file for Duet 3 MB 6HC (firmware version 3.3)
; executed by the firmware on start-up
;
; generated by RepRapFirmware Configuration Tool v3.3.12 on Mon Sep 05 2022 16:49:54 GMT+1000 (Australian Eastern Standard Time)
; LAST MODIFIED by DraconisCaesicius on Sun Sep 18 2022 17:17 GMT+1000 (Australian Eastern Standard Time)

; General preferences
G90                                          ; send absolute coordinates...
M83                                          ; ...but relative extruder moves
M550 P"Duet 3"                               ; set printer name
M669 K1                                      ; select CoreXY mode

; Drives
M569 P0.3 S1                                 ; physical drive 0.3 goes forwards
M569 P0.4 S1                                 ; physical drive 0.4 goes forwards
M569 P0.0 S0                                 ; physical drive 0.0 goes backwards
M569 P0.1 S0                                 ; physical drive 0.1 goes backwards
M569 P0.2 S0                                 ; physical drive 0.2 goes backwards
M569 P0.5 S1                                 ; physical drive 0.5 goes forwards
M584 X0.3 Y0.4 Z0.0:0.1:0.2 E0.5             ; set drive mapping
M671 X-4.5:250:504.5 Y-4.52:505:-4.52 S5     ; define positions of Z leadscrews or bed levelling screws
M557 X30:470 Y30:470 P5                      ; define mesh grid
M350 X16 Y16 Z16 E16 I1                      ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z800.00 E400.00            ; set steps per mm
M566 X900.00 Y900.00 Z60.00 E120.00          ; set maximum instantaneous speed changes (mm/min)
M203 X6000.00 Y6000.00 Z180.00 E1200.00      ; set maximum speeds (mm/min)
M201 X500.00 Y500.00 Z20.00 E250.00          ; set accelerations (mm/s^2)
M906 X1600 Y1600 Z1600 E800 I30              ; set motor currents (mA) and motor idle factor in per cent
M84 S30                                      ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                             ; set axis minima
M208 X500 Y500 Z500 S0                       ; set axis maxima

; Endstops
M574 X1 S1 P"io0.in"                         ; configure switch-type (e.g. microswitch) endstop for low end on X via pin io0.in
M574 Y2 S1 P"io1.in"                         ; configure switch-type (e.g. microswitch) endstop for high end on Y via pin io1.in

; Z-Probe
M950 S0 C"io7.out"                           ; create servo pin 0 for BLTouch
M558 P9 C"io7.in" H5 F120 T6000              ; set Z probe type to bltouch and the dive height + speeds
;M558 H30                                     ;*** Remove this line after delta calibration has been done and new delta parameters have been saved
G31 P500 X-28 Y-13 Z2.89                     ; set Z probe trigger value, offset and trigger height
M557 X15:472 Y15:487 S23.2                   ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out1" T0                           ; create bed heater output on out1 and map it to sensor 0
M307 H0 B0 R0.470 C549.3 D3.71 S1.00         ; Bed tuned for 65 degrees, V24.0 parameter omitted, heater not powered from Vin
;M307 H0 B0 S1.00                             ; disable bang-bang mode for the bed heater and set PWM limit
M140 H0                                      ; map heated bed to heater 0
M143 H0 S110                                 ; set temperature limit for heater 0 to 110C
M308 S1 P"temp1" Y"thermistor" T100000 B4138 ; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out2" T1                           ; create nozzle heater output on out2 and map it to sensor 1
M307 H1 B0 R2.232 C222.5:137.6 D3.58 S1.00   ;Tool tuned for 195 degrees, V24.0 parameter omitted, tool not powered from Vin
;M307 H1 B0 S1.00                             ; disable bang-bang mode for heater  and set PWM limit
M143 H1 S280                                 ; set temperature limit for heater 1 to 280C

; Fans
M950 F0 C"out4" Q500                         ; create fan 0 on pin out4 and set its frequency
M106 P0 C"Layer Fan" S0 H-1                  ; set fan 0 name and value. Thermostatic control is turned off
M950 F1 C"out7" Q500                         ; create fan 1 on pin out7 and set its frequency
M106 P1 C"Hotend Fan" S1 H1 T45              ; set fan 1 name and value. Thermostatic control is turned on

; Tools
M563 P0 S"Hotend" D0 H1 F0                   ; define tool 0
G10 P0 X0 Y0 Z0                              ; set tool 0 axis offsets
G10 P0 R0 S0                                 ; set initial tool 0 active and standby temperatures to 0C

; Custom settings
; Accelerometer LIS3DSH
M955 P0 I52 S1300 R16 C"spi.cs3+spi.cs2"
; Use Accelerometer 0, Zaccel faces -Ymachine and Xaccel faces
; Zmachine, Sample rate Hz, Resolution (bits), all wires
; connected to temp DB connector,

; M955 P0 C"io3.out+io3.in"                  ; CS and INT1 connected to IO3


; Miscellaneous
T0                                           ; select first tool

