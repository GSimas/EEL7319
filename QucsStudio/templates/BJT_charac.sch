<QucsStudio Schematic 3.3.1>
<Properties>
View=0,2,867,583,1,0,0
Grid=10,10,1
OpenDisplay=1
showFrame=0
</Properties>
<Symbol>
</Symbol>
<Components>
GND * 1 50 190 0 0 0 0
GND * 1 180 160 0 0 0 0
GND * 1 480 160 0 0 0 0
.DC DC1 1 50 300 -1 40 0 0 "0.001" 0 "1e-9" 0 "300" 0 "none" 0
_BJT T1 1 180 130 8 -36 0 0 "npn" 1 "1e-16" 1 "1" 0 "1" 0 "0" 0 "0" 0 "30" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "350" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0 "7.02e-4" 0 "1108.0" 0 "SOT23" 0
Eqn Eqn2 1 120 230 0 8 0 0 "power_limit=(Pmax / Uce_n) * (Uce < Umax)=" 1 "yes" 0
Eqn Eqn1 1 280 100 0 8 0 0 "Imax=0.15=" 1 "Umax=18=" 1 "Pmax=0.5=" 1 "no" 0
IProbe Icollector 1 420 60 -26 16 1 2
.SW SW1 1 220 300 -1 67 0 0 "DC1" 1 "Uce" 1 "lin" 1 "0" 1 "20" 1 "101" 1
.SW SW2 1 350 300 -1 67 0 0 "SW1" 1 "Ibase" 1 "lin" 1 "50 µA" 1 "250 µA" 1 "9" 1
Eqn Eqn3 1 50 510 0 8 0 0 "Uce_n=(Pmax/Imax - Uce) * (Uce < Pmax/Imax) + Uce=" 1 "no" 0
Idc I1 1 50 160 18 -26 0 0 "Ibase" 1 "SIL2" 0
Vdc V1 1 480 130 16 -20 0 0 "Uce" 1 "battery" 0 "SIL-2" 0
</Components>
<Wires>
50 130 150 130 "" 0 0 0 ""
180 60 180 100 "" 0 0 0 ""
180 60 390 60 "" 0 0 0 ""
480 60 480 100 "" 0 0 0 ""
450 60 480 60 "" 0 0 0 ""
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
Rectangle 270 70 100 130 #ff0000 2 1 #c0c0c0 1 0
</Paintings>
