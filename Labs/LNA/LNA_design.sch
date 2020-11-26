<QucsStudio Schematic 3.3.2>
<Properties>
View=-670,-962,1128,774,0.805288,0,60
Grid=10,10,1
DataSet=*.dat
DataDisplay=*.sch
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
GND * 1 -130 -220 0 0 0 2
GND * 1 -400 0 0 0 0 3
GND * 1 300 -70 0 0 0 1
GND * 1 200 40 0 0 0 0
GND * 1 -190 -160 0 0 0 3
IProbe iload 1 140 -70 -6 16 1 2
.AC AC1 0 -560 420 0 46 0 0 "lin" 1 "1 GHz" 1 "10 GHz" 1 "19" 1 "no" 0 "none" 0
Idc I1 5 30 130 15 -48 0 2 "ibias" 1 "SIL-2" 0
GND * 1 30 180 0 0 0 0
C C1 5 -50 130 17 -26 0 1 "1" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
DCFeed L1 5 -130 -80 20 -26 0 1 "1" 0
C C3 5 70 -70 -26 -17 0 2 "1" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
GND * 1 30 -240 0 0 0 2
Vdc V1 1 30 -210 -75 -26 0 2 "5 V" 1 "battery" 0 "SIL-2" 0
GND * 1 90 -180 0 0 0 1
DCFeed L2 5 30 -140 20 -26 0 1 "1" 0
R R4 5 -10 130 15 -26 0 1 "1 G" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
R R1 5 -160 -160 -26 15 0 0 "1 G" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
R R2 5 60 -180 -26 15 0 0 "1 G" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
C C2 5 -180 0 -26 -17 0 2 "1" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
IProbe iin 1 -60 0 -46 16 0 0
Lib BFR92A_T1 1 30 0 10 -19 0 0 "K_specBJT" 0 "BFR92A" 0 "SOT23" 0
R Load 2 200 -10 15 -26 0 1 "50 Ω" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
Vac V4 5 -320 -70 -26 18 0 3 "vin" 1 "f1" 0 "0" 0 "0" 0 "SUBCLICK" 0
.SP SP2 0 -110 510 0 79 0 0 "list" 1 "2 MHz" 0 "2 GHz" 0 "f1" 1 "no" 1 "1" 0 "2" 0 "none" 0
.SP SP1 0 -280 210 0 79 0 0 "log" 1 "2 MHz" 1 "2 GHz" 1 "100" 1 "no" 1 "1" 0 "2" 0 "none" 0
Pac P1 0 -330 0 -26 18 0 3 "1" 1 "50 Ω" 1 "0 dBm" 0 "f1" 0 "26.85" 0 "SUBCLICK" 0
Pac P2 0 280 -70 -26 -90 0 1 "2" 1 "50 Ω" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
Vdc V2 1 -130 -190 -108 -37 0 2 "1.3 V" 1 "battery" 0 "SIL-2" 0
Eqn Eqn1 1 170 240 0 8 0 0 "ibias=10e-3=" 1 "f1=100e6=" 1 "deltaf=10e6=" 1 "f2=f1+deltaf=" 1 "im31=2*f2-f1=" 1 "yes" 0
.HB HB1 1 -590 220 0 79 0 0 "32@;8@f1;" 0 "no" 0 "f1" 0 "lin" 0 "1 kHz" 0 "10 kHz" 0 "10" 0 "0.001" 0 "1 µA" 0 "500" 0
.SW SW1 1 -320 510 0 79 0 0 "HB1" 1 "vin" 1 "log" 1 "0.002" 1 "0.2" 1 "10" 1
</Components>
<Wires>
170 -70 200 -70 "vload" 180 -140 10 ""
30 160 30 180 "" 0 0 0 ""
-50 100 -10 100 "" 0 0 0 ""
-50 160 -10 160 "" 0 0 0 ""
-130 -160 -130 -110 "" 0 0 0 ""
-130 -50 -130 0 "" 0 0 0 ""
30 -70 40 -70 "" 0 0 0 ""
100 -70 110 -70 "" 0 0 0 ""
30 -110 30 -70 "" 0 0 0 ""
30 -180 30 -170 "" 0 0 0 ""
-10 160 30 160 "" 0 0 0 ""
-10 100 30 100 "" 0 0 0 ""
-150 0 -130 0 "" 0 0 0 ""
-130 0 -90 0 "" 0 0 0 ""
-400 0 -380 0 "" 0 0 0 ""
30 30 30 100 "" 0 0 0 ""
30 -70 30 -30 "" 0 0 0 ""
-30 0 0 0 "vin" -10 -100 4 ""
-380 -70 -380 0 "" 0 0 0 ""
200 -70 200 -40 "" 0 0 0 ""
200 20 200 40 "" 0 0 0 ""
-380 -70 -350 -70 "" 0 0 0 ""
-240 0 -210 0 "" 0 0 0 ""
-240 -70 -240 0 "" 0 0 0 ""
-290 -70 -240 -70 "" 0 0 0 ""
-380 0 -360 0 "" 0 0 0 ""
-300 0 -240 0 "" 0 0 0 ""
300 -70 310 -70 "" 0 0 0 ""
200 -70 250 -70 "" 0 0 0 ""
</Wires>
<Diagrams>
<Rect 431 -45 229 164 31 #c0c0c0 1 10 1 1e+08 1 1e+09 1 0.685379 0.2 1.91604 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"NF" "" #0000ff 2 3 0 0 0 0 "">
	<"NFmin" "" #ff0000 2 3 0 0 0 0 "">
</Rect>
<Smith 430 330 200 200 71 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 3 3 0 0 0 0 "">
	<"Sopt" "" #ff00ff 3 3 0 0 0 0 "">
</Smith>
<Smith 760 320 200 200 71 #c0c0c0 1 00 1 0 1 1 0 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 3 3 0 4 0 0 "">
	<"stabL()" "" #ff0000 3 3 0 1 0 0 "">
	<"S[2,2]" "" #ff00ff 3 3 0 5 0 0 "">
	<"stabS()" "" #00ff00 3 3 0 1 0 0 "">
</Smith>
<Tab 418 539 233 90 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 "" "" "">
	<"rollet()" "" #0000ff 0 3 1 0 0 0 "">
	<"abs(detS())" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
<Rect 800 -40 240 160 31 #c0c0c0 1 11 1 0.003 1 0.1 1 1e-07 1 0.001 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"yvalue(iload.Ib,2*f1)" "" #0055ff 2 3 0 0 0 0 "">
	<"yvalue(iload.Ib,3*f1)" "" #ff0000 2 3 0 0 0 0 "">
	<"yvalue(iload.Ib,f1)" "" #ff00ff 2 3 0 0 0 0 "">
</Rect>
</Diagrams>

<Paintings>
Text -362 -942 14 #ff5500 0 "Use o circuito abaixo como ponto de partida para o projeto de um LNA  \n baseado no transistor BFR92A @ 400 MHz. \n  \n 1 - Modificar o ponto de operação para que o amplificador  \n apresente o maior ganho de potência possível. \n 2 - Verificar e garantir a estabilidade do ampificador para a \n carga escolhida \n 3 - Considerar uma fonte com P_{avs}=-50 dBm@50 \\Omega \n 4 - Considerar uma carga de 50 \\Omega \n 5 - Projetar rede de adaptação (entrada) para garantir NF_{min} \n 6 - Projetar rede de adaptação (saída) para garantir Ganho máximo \n 7 - Refazer item 2 \n 8 - Substituir as fontes de alimentação ideais por circuitos de polarização,  \n considerando apenas uma fonte de tensão de 5 V. \n 9 - Voltar ao item 2  (e itens seguintes) e reajustar o projeto se necessário \n 10 - Verificar todas as figuras de mérito relativas à distorção. \n 11 - Trocar todos os componentes passivos por modelos de fabricantes  \n (usar modelos da Murata e/ou Coilcraft) \n 12 - Reavaliar o amplificador e readequar o projeto se necessário. \n 13 - Plotar histogramas das principais figuras de mérito após fazer  \n simulação de Monte Carlo considerando a tolerância dos componentes."
</Paintings>