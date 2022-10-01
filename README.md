# Vcore3_Duet6HC
Setup files and step-by-step instructions.

The build version 1:

Duet 3 6HC
E3D V6 hotend with PT1000 thermistor
Bondtech LGX extruder (NOT the LGX lite, just LGX)
EVA 2.8
LIS3DSH accelerometer
Completely 24V system

The build version 2:

Duet 3 6HC
Phaetus Rapido HF hotend
Bondtech LGX extruder (as above)
EVA 3
LIS3DSH accelerometer
Mixed 12V / 24V system
SanAce 12V 4028 layer fan
24V hotend fan

So, the story goes...

My first attempt at setting up my Vcore3 was using the Duet 3 6HC board only.
There was no Raspberry Pi / single board computer (SBC) at first.
I was using the RatRig (RR) supplied code, and made the adjustments listed on the RR website.
They never quite worked properly, so I tried using the Duet configuration tool.
I ran into more issues, but different problems.

Since then, I have opted to use a SBC (Raspberry Pi 400), which has necessitated a few changes.
I also started from the Duet configuration tool this time around.
However, I have co-opted improvements and changes made by Nurglerot, who has also posted a set of files.
Nurglerot's files are for a slightly different setup, but the base principles of operation remain the same.

As of 18/09/2022, these files are behaving as expected for basic movements.
This includes homing, bed levelling, and partial bed mesh.  The bed mesh pluging is not behaving properly yet.

USER BEWARE WARNINGS BELOW!!!

These files are for a Vcore 3.0 500mm, with BL Touch and Duet 3 MB 6HC.
If you have a different setup, you WILL need to make changes.
You WILL need to run a PID tune on your bed heater and tool heater, as my values will be different to yours.

CALIBRATE YOUR OWN Z OFFSET!!!  Mine will be different to yours.

I have not yet printed anything with these files.
I have not yet got a bed mesh working properly with these files.
I have not yet completed a full calibration with these files.
