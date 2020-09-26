<QucsStudio Schematic 3.3.2>
<Properties>
View=68,8,1816,992,1.18181,205,178
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
GND * 1 140 480 0 0 0 0
GND * 1 140 770 0 0 0 0
GND * 1 320 760 0 0 0 0
VProbe V1_2 1 300 750 -8 28 1 3
IProbe I2 1 390 700 -26 16 0 0
C C2 1 490 700 -26 -65 0 2 "4.7 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
R R3 1 590 700 -31 14 0 0 "0.3711 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
L L2 1 690 700 -21 -69 0 0 "0.280 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
R R4 1 490 770 -26 15 0 0 "10e9 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
GND * 1 760 780 0 0 0 0
Pac P1 1 140 740 18 -26 0 0 "1" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
Pac P2 1 760 740 18 -26 0 0 "2" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
Vac V1 1 140 450 18 -26 0 0 "1 V" 1 "1 MHz" 0 "0" 0 "0" 0 "SUBCLICK" 0
GND * 1 270 480 0 0 0 0
VProbe V1_1 1 250 470 -25 39 1 3
IProbe I1 1 320 410 -26 16 0 0
L L3 1 410 410 -73 -81 0 0 "5.4 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
R R1 1 630 410 -92 -123 0 0 "0.3711 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
L L1 1 730 410 -21 -69 0 0 "0.280 nH" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
R R2 1 530 480 -26 15 0 0 "10e9 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
GND * 1 800 490 0 0 0 0
C C1 1 530 410 -26 -65 0 2 "C1" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
VProbe V1_3 1 440 460 -8 28 1 3
GND * 1 460 470 0 0 0 0
Eqn Eqn1 1 890 790 0 8 0 0 "Zin=V1_1/I1=" 1 "X=imag(Zin)=" 1 "R=real(Zin)=" 1 "DF=abs(R/X)=" 1 "Q=1/DF=" 1 "Vo=V1_3=" 1 "yes" 0
.SW SW1 1 880 490 0 79 0 0 "AC1" 1 "C1" 1 "lin" 1 "4.45e-12" 1 "4.95e-12" 1 "10" 1
.AC AC1 1 880 300 0 46 0 0 "lin" 1 "100 MHz" 1 "10 GHz" 1 "10000" 1 "no" 0 "none" 0
</Components>
<Wires>
140 410 140 420 "" 0 0 0 ""
140 410 270 410 "" 0 0 0 ""
140 700 140 710 "" 0 0 0 ""
140 700 320 700 "" 0 0 0 ""
320 700 360 700 "" 0 0 0 ""
320 700 320 740 "" 0 0 0 ""
420 700 460 700 "" 0 0 0 ""
520 700 560 700 "" 0 0 0 ""
620 700 660 700 "" 0 0 0 ""
460 700 460 770 "" 0 0 0 ""
520 700 520 770 "" 0 0 0 ""
720 700 760 700 "" 0 0 0 ""
760 700 760 710 "" 0 0 0 ""
760 770 760 780 "" 0 0 0 ""
270 410 270 460 "" 0 0 0 ""
350 410 380 410 "" 0 0 0 ""
270 410 290 410 "" 0 0 0 ""
440 410 460 410 "" 0 0 0 ""
560 410 600 410 "" 0 0 0 ""
660 410 700 410 "" 0 0 0 ""
500 410 500 480 "" 0 0 0 ""
560 410 560 480 "" 0 0 0 ""
760 410 800 410 "" 0 0 0 ""
800 410 800 490 "" 0 0 0 ""
460 410 500 410 "" 0 0 0 ""
460 410 460 450 "" 0 0 0 ""
</Wires>
<Diagrams>
<Tab 1134 671 572 436 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1e+06 315 0 225 "" "" "">
	<"Q" "" #0000ff 0 3 1 0 0 0 "">
	<"DF" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
</Diagrams>
<Paintings>
Text 68 28 15 #000000 0 "Universidade Federal de Santa Catarina (UFSC) \n Centro Tecnológico (CTC) \n Departamento de Engenharia Elétrica e Eletrônica (EEL) \n Disciplina EEL7319 - Circuitos RF \n Semestre 2020/1 \n Aluno Gustavo Simas da Silva"
</Paintings>
