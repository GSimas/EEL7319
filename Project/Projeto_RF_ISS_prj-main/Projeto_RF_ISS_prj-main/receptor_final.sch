<QucsStudio Schematic 3.3.2>
<Properties>
View=-43,-392,1681,727,0.715977,0,179
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
Sub Mixer 1 770 220 -40 -49 0 0 "mixer.sch" 0
.HB HB1 0 30 -350 0 63 0 0 "8@;16@145.825 MHz;" 0 "no" 0 "145.825 MHz" 0 "lin" 0 "1 kHz" 0 "10 kHz" 0 "10" 0 "0.001" 0 "1 µA" 0 "500" 0
.SP SP1 0 240 -350 0 63 0 0 "lin" 1 "100Hz" 1 "145.825MHz" 1 "100" 1 "no" 0 "1" 0 "2" 0 "none" 0
.AC AC1 0 410 -350 0 38 0 0 "list" 1 "1 GHz" 0 "10 GHz" 0 "146.825 MHz" 1 "yes" 0 "none" 0
Eqn Eqn1 1 570 -340 0 8 0 0 "Rlna=Vlna/Ilna=" 1 "Rosc=Vosc/Iosc=" 1 "Rin=Vin/Iin=" 1 "Pout=0.5*real(Vout*conj(Iout))=" 1 "yes" 0
DCBlock C1 1 700 220 -26 21 0 0 "1 µF" 0
DCBlock C4 1 710 300 -26 21 0 0 "1 µF" 0
Sub LNA 1 570 220 -29 49 0 0 "lna.sch" 0
GND * 1 530 360 0 0 0 0
Sub AMP_POT1 1 1100 220 -30 44 0 0 "new amplifier.sch" 0
R R1 1 1180 250 15 -26 0 1 "50 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
GND * 1 1180 280 0 0 0 0
Vac V1 1 530 330 24 -26 0 0 "1 V" 1 "145.825MHz" 1 "-200" 1 "0" 0 "SUBCLICK" 0
.TR TR1 1 610 -140 0 63 0 0 "lin" 0 "0" 0 "200us" 1 "20001" 1 "Gear3" 0 "1e-20" 0 "1000" 0 "0.001" 0 "1 µV" 0 "yes" 0 "bias" 0
Pac P1 1 310 -60 -141 -48 0 0 "100" 0 "50 Ω" 1 "-106.1909 dBm" 1 "145.825 MHz" 1 "26.85" 0 "SUBCLICK" 0
VMod V2 1 450 250 -95 -85 0 0 "0.01 V" 1 "15 kHz" 1 "0" 0 "1.0" 0 "FM" 1
GND * 1 450 270 0 0 0 0
Vac V3 1 420 320 -45 61 0 0 "1 V" 1 "145.825 MHz" 1 "0" 0 "0" 0 "SUBCLICK" 0
GND * 1 420 350 0 0 0 0
Sub FPB 1 940 220 -26 34 0 0 "filter.sch" 0
</Components>
<Wires>
770 260 770 300 "" 0 0 0 ""
740 300 770 300 "" 0 0 0 ""
630 220 670 220 "" 0 0 0 ""
530 300 680 300 "Vosc" 623 260 50 ""
450 220 510 220 "Vin" 500 160 40 ""
1140 220 1180 220 "Vout" 1190 150 40 ""
450 270 450 280 "" 0 0 0 ""
420 250 420 290 "" 0 0 0 ""
1020 220 1060 220 "" 0 0 0 ""
810 220 860 220 "Vmix" 840 160 0 ""
630 220 630 220 "Vlna" 660 160 0 ""
1060 220 1060 220 "Vfilter" 980 150 0 ""
</Wires>
<Diagrams>
<Tab 924 -289 377 83 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 200001 315 0 225 "" "" "">
	<"Rlna" "" #0000ff 0 3 0 0 0 0 "">
	<"Rosc" "" #0000ff 0 3 0 0 0 0 "">
	<"Rin" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
<Tab 929 -213 200 59 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 200001 315 0 225 "" "" "">
	<"Pout" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
</Diagrams>
<Paintings>
</Paintings>
