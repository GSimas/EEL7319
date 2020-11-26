<QucsStudio Schematic 3.3.2>
<Properties>
View=-716,-962,1669,1182,0.85316,0,514
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
GND * 1 -190 -160 0 0 0 3
GND * 1 30 180 0 0 0 0
R R1 5 -160 -160 -26 15 0 0 "1 G" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
IProbe iin 1 -60 0 -46 16 0 0
Lib BFR92A_T1 1 30 0 10 -19 0 0 "K_specBJT" 0 "BFR92A" 0 "SOT23" 0
.SP SP1 0 -280 210 0 79 0 0 "log" 1 "2 MHz" 1 "2 GHz" 1 "100" 1 "no" 1 "1" 0 "2" 0 "none" 0
.HB HB1 0 -590 220 0 79 0 0 "32@;8@f1;" 0 "no" 0 "f1" 0 "lin" 0 "1 kHz" 0 "10 kHz" 0 "10" 0 "0.001" 0 "1 µA" 0 "500" 0
GND * 1 500 -70 0 0 0 1
Pac P2 0 480 -70 -26 -90 0 1 "2" 1 "50 Ω" 1 "-50 dBm" 0 "1 GHz" 0 "26.85" 0 "SUBCLICK" 0
GND * 1 400 170 0 0 0 0
IProbe iload 1 400 10 16 -6 1 3
GND * 1 -540 0 0 0 0 3
Pac P1 0 -470 0 -26 18 0 3 "1" 1 "50 Ω" 1 "-50 dBm" 0 "f1" 0 "26.85" 0 "SUBCLICK" 0
Vac V4 5 -460 -70 -26 18 0 3 "1" 1 "f1" 0 "0" 0 "0" 0 "SUBCLICK" 0
.AC AC1 1 -580 420 0 46 0 0 "list" 1 "10 MHz" 0 "1 GHz" 0 "400 MHz" 1 "yes" 1 "none" 0
.SW SW2 0 100 510 0 79 0 0 "AC1" 1 "Rload" 1 "log" 1 "1" 1 "10e3" 1 "1000" 1
R Load 1 400 120 15 -26 0 1 "50" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
Eqn Eqn1 1 20 270 0 8 0 0 "ibias=18.3*10e-3=" 1 "f1=400*10e6=" 1 "deltaf=10e6=" 1 "f2=f1+deltaf=" 1 "im31=2*f2-f1=" 1 "yes" 0
Eqn Eqn2 1 270 270 0 8 0 0 "Pavs=0.5*real(vin.v*conj(iin.i))=" 1 "So=0.5*real(vload.v*conj(iload.i))=" 1 "G=So/Pavs=" 1 "Ni=real(vin.vn*conj(iin.in))=" 1 "No=real(vload.vn*conj(iload.in))=" 1 "F=No/(G*Ni)=" 1 "NF=10*log10(F)=" 1 "yes" 0
GND * 1 -250 120 0 0 0 0
.SW SW3 1 -320 790 0 79 0 0 "AC1" 1 "Cinp" 1 "log" 1 "10e-12" 1 "10e-9" 1 "1000" 1
GND * 1 280 50 0 0 0 0
L L4 1 280 -20 10 -26 0 1 "10e-6" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
GND * 1 30 -290 0 0 0 2
Vdc V1 1 30 -240 -75 -26 0 2 "5 V" 1 "battery" 0 "SIL-2" 0
.SP SP2 0 -110 510 0 79 0 0 "list" 1 "2 MHz" 0 "2 GHz" 0 "f1" 1 "yes" 1 "1" 0 "2" 0 "none" 0
R R5 5 -130 -80 15 -26 0 1 "10k" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
.SW SW4 0 -120 790 0 79 0 0 "SW1" 1 "Linp" 1 "log" 1 "10e-6" 1 "10e-3" 1 "10" 1
.SW SW1 0 -320 510 0 79 0 0 "SW3" 1 "bias_curr" 1 "log" 1 "0.001" 1 "0.1" 1 "20" 1
L L3 1 -250 50 10 -26 0 1 "10e-6" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
C C5 5 210 -70 -26 -17 0 2 "10e-8" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
R R6 5 30 -140 15 -26 0 1 "10k" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
C C4 5 -320 0 -26 -17 0 2 "Cinp" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
C C6 5 -50 130 -17 -26 0 3 "10e-12" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
R R4 5 30 130 15 -26 0 1 "1k" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
</Components>
<Wires>
30 160 30 180 "" 0 0 0 ""
-50 100 30 100 "" 0 0 0 ""
-50 160 30 160 "" 0 0 0 ""
-130 -160 -130 -110 "" 0 0 0 ""
30 -110 30 -70 "" 0 0 0 ""
30 30 30 100 "" 0 0 0 ""
30 -70 30 -30 "" 0 0 0 ""
-30 0 0 0 "vin" -10 -100 4 ""
500 -70 510 -70 "" 0 0 0 ""
400 -70 450 -70 "" 0 0 0 ""
400 -70 400 -20 "" 0 0 0 ""
400 150 400 170 "" 0 0 0 ""
400 40 400 90 "" 0 0 0 ""
-540 0 -520 0 "" 0 0 0 ""
-520 -70 -520 0 "" 0 0 0 ""
-520 -70 -490 -70 "" 0 0 0 ""
-380 -70 -380 0 "" 0 0 0 ""
-430 -70 -380 -70 "" 0 0 0 ""
-520 0 -500 0 "" 0 0 0 ""
-440 0 -380 0 "" 0 0 0 ""
-250 0 -250 20 "" 0 0 0 ""
-250 80 -250 120 "" 0 0 0 ""
240 -70 280 -70 "" 0 0 0 ""
280 -70 400 -70 "vload" 380 -140 100 ""
280 -70 280 -50 "" 0 0 0 ""
280 10 280 50 "" 0 0 0 ""
30 -290 30 -270 "" 0 0 0 ""
30 -210 30 -170 "" 0 0 0 ""
-130 -210 30 -210 "" 0 0 0 ""
-130 -210 -130 -160 "" 0 0 0 ""
-250 0 -90 0 "" 0 0 0 ""
30 -70 180 -70 "" 0 0 0 ""
-380 0 -350 0 "" 0 0 0 ""
-290 0 -250 0 "" 0 0 0 ""
</Wires>
<Diagrams>
<Rect 691 -55 229 164 31 #c0c0c0 1 10 1 1e+08 1 1e+09 1 0.685379 0.2 1.91604 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"NF" "" #0000ff 2 3 0 0 0 0 "">
	<"NFmin" "" #ff0000 2 3 0 0 0 0 "">
</Rect>
<Smith 690 320 200 200 71 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 3 3 0 5 0 0 "">
	<"Sopt" "" #ff00ff 3 3 0 5 0 0 "">
</Smith>
<Rect 1060 -50 240 160 31 #c0c0c0 1 11 1 0.003 1 0.1 1 1e-07 1 0.001 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"yvalue(iload.Ib,2*f1)" "" #0055ff 2 3 0 0 0 0 "">
	<"yvalue(iload.Ib,3*f1)" "" #ff0000 2 3 0 0 0 0 "">
	<"yvalue(iload.Ib,f1)" "" #ff00ff 2 3 0 0 0 0 "">
</Rect>
<Smith 910 300 200 200 71 #c0c0c0 1 00 1 0 1 1 0 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,2]" "" #0000ff 3 3 0 5 0 0 "">
	  <Mkr 1 180 -190 3 1 0 0 0 50>
	<"S[2,1]" "" #ff0000 3 3 0 5 0 0 "">
	  <Mkr 1 -10 -230 3 1 0 0 0 50>
</Smith>
<Tab 345 1162 395 104 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 10000 315 0 225 "" "" "">
	<"Pavs" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
<Smith 699 783 394 394 71 #c0c0c0 1 00 1 0 1 1 0 0 4 3 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"stabL()" "" #ff0000 3 3 0 1 0 0 "">
	<"S[1,1]" "" #0000ff 3 3 0 0 0 0 "">
	  <Mkr 1 121 -353 3 1 0 0 0 50>
	<"S[2,2]" "" #ff00ff 3 3 0 0 0 0 "">
	  <Mkr 1 271 -113 3 1 0 0 0 50>
	<"stabS()" "" #00ff00 3 3 0 1 0 0 "">
</Smith>
<Tab 794 977 236 69 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 100 315 0 225 "" "" "">
	<"rollet()" "" #0000ff 0 3 1 0 0 0 "">
	<"abs(detS())" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
</Diagrams>
<Paintings>
Text -362 -942 14 #ff5500 0 "Use o circuito abaixo como ponto de partida para o projeto de um LNA  \n baseado no transistor BFR92A @ 400 MHz. \n  \n 1 - Modificar o ponto de operação para que o amplificador  \n apresente o maior ganho de potência possível. \n 2 - Verificar e garantir a estabilidade do ampificador para a \n carga escolhida \n 3 - Considerar uma fonte com P_{avs}=-50 dBm@50 \\Omega \n 4 - Considerar uma carga de 50 \\Omega \n 5 - Projetar rede de adaptação (entrada) para garantir NF_{min} \n 6 - Projetar rede de adaptação (saída) para garantir Ganho máximo \n 7 - Refazer item 2 \n 8 - Substituir as fontes de alimentação ideais por circuitos de polarização,  \n considerando apenas uma fonte de tensão de 5 V. \n 9 - Voltar ao item 2  (e itens seguintes) e reajustar o projeto se necessário \n 10 - Verificar todas as figuras de mérito relativas à distorção. \n 11 - Trocar todos os componentes passivos por modelos de fabricantes  \n (usar modelos da Murata e/ou Coilcraft) \n 12 - Reavaliar o amplificador e readequar o projeto se necessário. \n 13 - Plotar histogramas das principais figuras de mérito após fazer  \n simulação de Monte Carlo considerando a tolerância dos componentes."
</Paintings>
