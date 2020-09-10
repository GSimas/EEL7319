<QucsStudio Schematic 3.3.2>
<Properties>
View=0,-282,1668,862,1,0,240
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
VProbe V2_1 1 660 160 25 42 0 3
GND * 1 640 210 0 0 0 0
GND * 1 280 220 0 0 0 0
GND * 1 130 220 0 0 0 0
C C1 1 470 180 6 -58 0 1 "1 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
GND * 1 470 210 0 0 0 0
R R1 1 410 100 -26 15 0 0 "50 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
IProbe I1_1 1 310 100 -26 16 0 0
VProbe V1_1 1 250 170 -31 28 1 3
Vac V3 1 130 150 18 -26 0 0 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0 "SUBCLICK" 0
VProbe V2_2 1 570 660 25 42 0 3
GND * 1 550 710 0 0 0 0
VProbe V1_2 1 170 670 -31 28 1 3
GND * 1 190 720 0 0 0 0
C C2 1 380 680 -81 -8 0 1 "1 pF" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
GND * 1 380 710 0 0 0 0
R R2 1 320 600 -26 15 0 0 "50 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
IProbe I2_2 1 470 600 -14 16 1 2
GND * 1 680 710 0 0 0 0
Vac V2 1 680 640 18 -26 0 0 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0 "SUBCLICK" 0
.AC AC1 1 1150 -100 0 46 0 0 "list" 1 "1 GHz" 0 "10 GHz" 0 "1 GHz" 1 "no" 0 "none" 0
Eqn Eqn1 1 970 -80 0 8 0 0 "z11=V1_1/I1_1=" 1 "z12=V1_2/I2_2=" 1 "z21=V2_1/I1_1=" 1 "z22=V2_2/I2_2=" 1 "yes" 0
</Components>
<Wires>
640 170 640 210 "" 0 0 0 ""
130 100 130 120 "" 0 0 0 ""
130 100 280 100 "" 0 0 0 ""
130 180 130 220 "" 0 0 0 ""
640 100 640 150 "" 0 0 0 ""
470 100 640 100 "" 0 0 0 ""
340 100 380 100 "" 0 0 0 ""
470 100 470 150 "" 0 0 0 ""
440 100 470 100 "" 0 0 0 ""
270 180 280 180 "" 0 0 0 ""
280 180 280 220 "" 0 0 0 ""
270 160 280 160 "" 0 0 0 ""
280 100 280 160 "" 0 0 0 ""
550 670 550 710 "" 0 0 0 ""
190 680 190 720 "" 0 0 0 ""
550 600 550 650 "" 0 0 0 ""
380 600 440 600 "" 0 0 0 ""
380 600 380 650 "" 0 0 0 ""
350 600 380 600 "" 0 0 0 ""
500 600 550 600 "" 0 0 0 ""
680 670 680 710 "" 0 0 0 ""
190 600 190 660 "" 0 0 0 ""
190 600 290 600 "" 0 0 0 ""
550 600 680 600 "" 0 0 0 ""
680 600 680 610 "" 0 0 0 ""
</Wires>
<Diagrams>
<Tab 860 360 420 60 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "">
	<"z11" "" #0000ff 0 3 0 0 0 0 "">
	<"z12" "" #0000ff 0 3 0 0 0 0 "">
	<"z21" "" #0000ff 0 3 0 0 0 0 "">
	<"z22" "" #0000ff 0 3 0 0 0 0 "">
</Tab>
</Diagrams>
<Paintings>
Rectangle 370 60 180 190 #aa00ff 2 2 #c0c0c0 1 0
Text 378 28 12 #aa00ff 0 "Quadripolo"
Text 78 38 15 #0000ff 0 "Circuito 1.1 \n "
Text 1008 418 15 #ff5500 0 "- Obs: parte real de z21 deveria ser zero, \n por questão de algoritmo do software deve \n estar apresentando este valor 8.83*10^-15 \n (o que pode ser considerado desprezível)"
Arrow 1050 360 0 50 16 4 #aa0000 2 1 0
Rectangle 270 550 150 200 #aa00ff 2 2 #c0c0c0 1 0
Text 278 518 12 #aa00ff 0 "Quadripolo"
Text 108 528 15 #00a800 0 "Circuito 1.2"
Text 958 -202 14 #aa0000 0 "Completar"
Arrow 1000 -170 0 50 16 4 #aa0000 2 1 0
Text 768 578 15 #00ac53 0 "- Circuito 1.2 com voltímetros V1_2, V2_2 e amperímetro I2_2 \n utilizados para verificar caso em que I1 = 0 do quadripolo referente \n de modo a se obter Z1_2 e Z2_2 apresentados nas respectivas equações \n  \n - Z2_2 sendo impedância "vista pela fonte ideal V2" quando I1 = 0 \n - Z1_2 sendo "impedância de transferência/imagem" em relação a ports 1 e 2"
Text 768 88 15 #0000ff 0 "- Circuito 1.1 com voltímetros V1_1, V2_1 e amperímetro I1_1 \n utilizados para verificar caso em que I2 = 0 do quadripolo referente \n de modo a se obter Z1_1 e Z2_1 apresentados respectivas equações \n  \n - Z1_1 sendo impedância "vista pela fonte ideal V1" quando I2 = 0 \n - Z2_1 sendo "impedância de transferência/imagem" em relação a ports 2 e 1"
Text 58 -72 15 #ff5500 0 "- Explicar cada parte deste diagrama \n - Completar as equações para extrair a matriz de impedâncias completa."
Text 68 -262 15 #000000 0 "Universidade Federal de Santa Catarina (UFSC) \n Centro Tecnológico (CTC) \n Departamento de Engenharia Elétrica e Eletrônica (EEL) \n Disciplina EEL7319 - Circuitos RF \n Semestre 2020/1 \n Aluno Gustavo Simas da Silva"
Text 98 318 15 #ff5500 0 "- Para redes recíprocas Z1_2 = Z2_1 \n - Para redes simétricas Z1_1 = Z2_2 \n "
</Paintings>
