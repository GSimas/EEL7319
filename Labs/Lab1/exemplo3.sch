<QucsStudio Schematic 3.3.2>
<Properties>
View=0,0,1357,860,1,0,0
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.dpl
OpenDisplay=1
showFrame=0
FrameText0=Title
FrameText1=Drawn By:
FrameText2=Date:
FrameText3=Revision:
</Properties>
<Symbol>
</Symbol>
<Components>
GND * 1 1230 510 0 0 0 0
GND * 1 780 570 0 0 0 0
GND * 1 890 570 0 0 0 0
C C2 1 780 540 17 -26 0 1 "1 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
C C1 1 830 420 17 -26 0 1 "1 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
GND * 1 550 480 0 0 0 0
VProbe V2_1 1 530 430 -31 28 1 3
R R2 1 1230 480 15 -26 0 1 "50 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
IProbe I2_1 1 770 390 -26 16 0 0
Vac V1 1 380 450 18 -26 0 0 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0 "SUBCLICK" 0
GND * 1 380 480 0 0 0 0
R R5 1 890 540 25 -25 0 3 "500 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
Eqn Eqn1 1 640 110 0 8 0 0 "Imag=imag(V2_1/I2_1)=" 1 "Real=real(V2_1/I2_1)=" 1 "Z=Imag/Real=" 1 "yes" 0
.AC AC1 1 90 360 0 46 0 0 "lin" 1 "1 kHz" 1 "100 GHz" 1 "10000" 1 "no" 0 "none" 0
</Components>
<Wires>
1230 390 1230 450 "" 0 0 0 ""
780 450 780 510 "" 0 0 0 ""
780 450 830 450 "" 0 0 0 ""
890 450 890 510 "" 0 0 0 ""
830 450 890 450 "" 0 0 0 ""
830 390 1230 390 "" 0 0 0 ""
550 440 550 480 "" 0 0 0 ""
800 390 830 390 "" 0 0 0 ""
550 390 550 420 "" 0 0 0 ""
550 390 740 390 "" 0 0 0 ""
380 390 380 420 "" 0 0 0 ""
380 390 550 390 "" 0 0 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
