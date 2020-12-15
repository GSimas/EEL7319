<QucsStudio Schematic 3.3.2>
<Properties>
View=-714,-249,1308,960,0.866666,0,0
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
.AC AC1 0 690 -150 0 38 0 0 "list" 1 "1 GHz" 0 "10 GHz" 0 "145.8 MHz" 1 "yes" 1 "none" 0
.SP SP1 0 380 -150 0 84 0 0 "lin" 1 "10 MHz" 1 "145.8 MHz" 1 "100" 1 "yes" 1 "1" 0 "2" 0 "none" 0
.SW SW1 0 770 60 0 79 0 0 "SP1" 1 "Rload" 1 "lin" 1 "5" 1 "50k" 1 "1000" 1
.SW SW2 0 970 50 0 79 0 0 "SP1" 1 "Cload" 1 "lin" 1 "1e-15" 1 "1e-9" 1 "1000" 1
.SW SW3 0 1150 50 0 79 0 0 "SP1" 1 "Lload" 1 "lin" 1 "1e-15" 1 "1e-2" 1 "1000" 1
Amp X4 1 -280 260 -26 27 0 0 "10 dB" 1 "50 Ohm" 0 "50 Ohm" 0 "0 dB" 0
Op X3 1 -110 270 -26 21 0 0 "multiplication" 1 "2" 0
GND * 1 -190 390 0 0 0 0
Vac V8 1 -190 360 18 -26 0 0 "1 V" 1 "1e6" 0 "0" 0 "0" 0 "SUBCLICK" 0
.TR TR1 1 980 -150 0 79 0 0 "lin" 0 "0" 0 "1e-3" 1 "10000" 1 "Trapezoidal" 0 "1e-16" 0 "500" 0 "0.001" 0 "1 µV" 0 "no" 0 "none" 0
GND * 1 -520 350 0 0 0 0
GND * 1 -630 390 0 0 0 0
Vac V7 1 -630 360 18 -26 0 0 "1 V" 1 "10e3" 0 "0" 0 "0" 0 "SUBCLICK" 0
VMod V6 1 -520 320 18 -26 0 0 "0.1 V" 1 "145.8e6" 1 "0" 0 "1" 0 "FM" 1
Filter X6 1 -390 260 -26 21 0 0 "1 GHz" 0 "3" 0 "lowpass" 0 "butterworth" 0
Filter X1 1 110 270 -26 21 0 0 "1 GHz" 0 "3" 0 "lowpass" 0 "butterworth" 0
Amp X5 1 270 270 -26 27 0 0 "20 dB" 1 "50 Ohm" 0 "50 Ohm" 0 "0 dB" 0
</Components>
<Wires>
-250 260 -140 260 "vlna" -220 170 46 ""
-190 280 -140 280 "" 0 0 0 ""
-190 280 -190 330 "" 0 0 0 ""
-80 270 80 270 "vmixer" 20 220 71 ""
140 270 240 270 "" 0 0 0 ""
-630 320 -630 330 "" 0 0 0 ""
-630 320 -550 320 "vmod" -640 230 18 ""
-360 260 -310 260 "" 0 0 0 ""
-520 260 -520 290 "" 0 0 0 ""
-520 260 -420 260 "" 0 0 0 ""
-190 280 -190 280 "vosc" -300 360 0 ""
240 270 240 270 "vfilter" 230 190 0 ""
-520 290 -520 290 "vfm" -460 190 0 ""
300 270 300 270 "vout" 330 230 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
Text -442 -122 15 #000000 0 "Universidade Federal de Santa Catarina (UFSC) \n Centro Tecnológico (CTC) \n Departamento de Engenharia Elétrica e Eletrônica (EEL) \n Disciplina EEL7319 - Circuitos RF \n Semestre 2020/1 \n Gustavo Simas da Silva"
Text -442 78 15 #ff0000 0 "RECEPTOR RF ISS \n "
</Paintings>
