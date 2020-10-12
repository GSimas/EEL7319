<QucsStudio Schematic 3.3.2>
<Properties>
View=0,54,1477,968,1,0,20
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
GND * 1 70 590 0 0 0 0
VProbe V1_1 1 280 550 -31 28 1 3
GND * 1 300 560 0 0 0 0
IProbe I1_1 1 360 450 -26 16 0 0
VProbe V1_2 1 790 540 -31 28 1 3
GND * 1 810 600 0 0 0 0
GND * 1 1340 620 0 0 0 0
.AC AC1 1 1220 100 0 46 0 0 "lin" 1 "1 GHz" 1 "10 GHz" 1 "1000" 1 "yes" 1 "none" 0
R Rs3 1 940 450 -26 15 0 0 "120 Ω" 1 "30" 1 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
IProbe I1_2 1 1180 450 -26 16 0 0
R Rs 1 140 450 -26 15 0 0 "50 Ω" 1 "16.85" 1 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
R RL 1 1340 540 15 -26 0 1 "170 Ω" 1 "T0K" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
Eqn Eqn1 1 200 730 0 8 0 0 "Pavs=1/2*V1_1*I1_1=" 1 "So=1/2*vout.v*I1_2=" 1 "Ni=Vin.vn*I1_1.in=" 1 "No=vout.vn*I1_2.in=" 1 "G=So/Pavs=" 1 "F=No/(G*Ni)=" 1 "NF=10*log10(F)=" 1 "yes" 0
Vac VS 1 70 560 18 -26 0 0 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0 "SUBCLICK" 0
Amp X1 1 620 450 -26 27 0 0 "0 dB" 1 "50 Ohm" 0 "50 Ohm" 0 "0 dB" 0
</Components>
<Wires>
70 450 70 530 "" 0 0 0 ""
70 450 110 450 "" 0 0 0 ""
170 450 300 450 "Vin" 270 400 68 ""
300 450 300 540 "" 0 0 0 ""
300 450 330 450 "" 0 0 0 ""
390 450 590 450 "" 0 0 0 ""
810 450 810 530 "" 0 0 0 ""
810 550 810 600 "" 0 0 0 ""
810 450 910 450 "" 0 0 0 ""
1340 570 1340 620 "" 0 0 0 ""
1340 450 1340 510 "" 0 0 0 ""
1210 450 1340 450 "" 0 0 0 ""
970 450 1150 450 "vout" 1090 400 94 ""
650 450 810 450 "vsout" 690 400 17 ""
</Wires>
<Diagrams>
<Tab 520 840 710 70 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1000 315 0 225 "" "" "">
	<"Pavs" "" #0000ff 0 3 1 0 0 0 "">
	<"So" "" #0000ff 0 3 1 0 0 0 "">
	<"Ni" "" #0000ff 0 3 1 0 0 0 "">
	<"No" "" #0000ff 0 3 1 0 0 0 "">
	<"G" "" #0000ff 0 3 1 0 0 0 "">
	<"F" "" #0000ff 0 3 1 0 0 0 "">
	<"NF" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
</Diagrams>
<Paintings>
Text 48 108 15 #000000 0 "Universidade Federal de Santa Catarina (UFSC) \n Centro Tecnológico (CTC) \n Departamento de Engenharia Elétrica e Eletrônica (EEL) \n Disciplina EEL7319 - Circuitos RF \n Semestre 2020/1 \n Aluno Gustavo Simas da Silva"
Rectangle 870 370 160 250 #ff0004 2 1 #c0c0c0 1 0
</Paintings>
