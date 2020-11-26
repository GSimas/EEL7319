<QucsStudio Schematic 3.3.2>
<Properties>
View=-950,-1332,1724,996,0.958981,49,751
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
GND * 1 -210 20 0 0 0 0
IProbe iin 1 -300 -160 -46 16 0 0
Lib BFR92A_T1 1 -210 -160 10 -19 0 0 "K_specBJT" 0 "BFR92A" 0 "SOT23" 0
GND * 1 -820 -160 0 0 0 3
Pac P1 0 -750 -160 -26 18 0 3 "1" 1 "50 Ω" 1 "-50 dBm" 0 "f1" 0 "26.85" 0 "SUBCLICK" 0
GND * 1 -570 -50 0 0 0 0
R R5 5 -570 -110 15 -26 0 1 "45" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
C C4 5 0 -230 -64 -50 0 2 "1.71425e-13" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
C C10 5 120 -230 -11 -55 0 2 "7.94e-14" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
R R6 5 -240 -200 -54 -26 0 1 "50" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
GND * 1 -210 -520 0 0 0 2
Vdc V1 1 -210 -490 -75 -26 0 2 "5 V" 1 "battery" 0 "SIL-2" 0
GND * 1 -80 -460 0 0 0 1
R R2 5 -140 -460 -26 15 0 0 "1 G" 0 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
L L7 1 -210 -420 -74 -36 0 1 "1e-6" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
C C3 6 -130 -230 -26 -17 0 2 "1" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
L L5 1 -370 -300 -83 -50 0 1 "1e-6" 1 "0" 0 "" 0 "SELF-WE-PD3S" 0
C C1 5 -290 -30 -14 3 0 1 "10" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
R R4 5 -210 -30 -66 -61 0 1 "1 G" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
.SP SP1 0 -280 430 0 79 0 0 "log" 1 "2 MHz" 1 "2 GHz" 1 "100" 1 "no" 1 "1" 0 "2" 0 "none" 0
.HB HB1 0 -840 420 0 79 0 0 "32@;8@f1;" 0 "yes" 0 "f1" 0 "lin" 0 "1 kHz" 0 "10 kHz" 0 "100" 0 "0.001" 0 "1 µA" 0 "500" 0
.SW SW1 0 -320 730 0 79 0 0 "AC1" 1 "bias_curr" 1 "log" 1 "1e-9" 1 "1" 1 "1000" 1
_BJT T2 1 -310 200 -73 -26 1 2 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0 "7.02e-4" 0 "1108.0" 0 "SOT23" 0
R R7 5 -310 120 -96 -10 0 1 "100" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
GND * 1 -80 260 0 0 0 0
GND * 1 -310 250 0 0 0 0
_BJT T1 1 -80 200 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0 "7.02e-4" 0 "1108.0" 0 "SOT23" 0
.SP SP2 0 -540 410 0 79 0 0 "list" 1 "2 MHz" 0 "2 GHz" 0 "f1" 1 "yes" 1 "1" 0 "2" 0 "none" 0
IProbe iload1 1 -80 60 16 -6 1 3
.DC DC1 0 -830 60 0 46 0 0 "0.001" 0 "1 nA" 0 "500" 0 "none" 0
.TR TR1 0 -840 190 0 79 0 0 "lin" 0 "0" 0 "10 ms" 1 "1000" 1 "Trapezoidal" 0 "1e-16" 0 "500" 0 "0.001" 0 "1 µV" 0 "yes" 0 "none" 0
C C9 5 -420 -160 -26 -17 0 2 "1" 0 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
.SW SW3 0 100 730 0 79 0 0 "MC1" 1 "Cinp" 1 "log" 1 "1e-15" 1 "1e-9" 1 "100" 1
C C8 5 -520 -160 -52 -42 0 2 "8.61e-11" 1 "0" 0 "" 0 "neutral" 0 "SMD0603" 0
.AC AC1 1 -550 640 0 46 0 0 "list" 1 "1 GHz" 0 "10 GHz" 0 "f1" 1 "yes" 1 "none" 0
.MC MC1 0 -840 630 0 79 0 0 "AC1" 1 "2" 1
.SW SW2 0 -100 730 0 79 0 0 "MC1" 1 "Rload" 1 "log" 1 "1e6" 1 "1" 1 "100" 1
R R8 5 -600 -160 -67 15 0 2 "45" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "US" 0 "SMD0603" 0
.SW SW4 0 290 730 0 79 0 0 "HB1" 1 "vin" 1 "log" 1 "1e-3" 1 "0.5" 1 "50" 1
Eqn Eqn2 1 -90 380 0 8 0 0 "ibias=1e-3=" 1 "f1=400*1e6=" 1 "deltaf=10e6=" 1 "f2=f1+deltaf=" 1 "im31=2*f2-f1=" 1 "alpha1=0.5=" 1 "alpha2=0.5=" 1 "io1=alpha1*yvalue(iload.Ib,f1)=" 1 "io2=alpha2*yvalue(iload.Ib,f1)^2=" 1 "no" 0
GND * 1 50 -90 0 0 0 0
GND * 1 -70 -130 0 0 0 0
GND * 1 420 -230 0 0 0 1
GND * 1 320 -30 0 0 0 0
IProbe iload 1 320 -180 16 -6 1 3
R Load 1 320 -100 15 -26 0 1 "50" 1 "26.85" 0 "0" 0 "0" 0 "26.85" 0 "european" 0 "SMD0603" 0
Pac P2 0 400 -230 -26 -90 0 1 "2" 1 "50 Ω" 1 "-50 dBm" 0 "f1" 0 "26.85" 0 "SUBCLICK" 0
Eqn Eqn3 1 200 380 0 8 0 0 "Pavs=0.5*real(vin.v*conj(iin.i))=" 1 "So=0.5*real(vload.v*conj(iload.i))=" 1 "G=So/Pavs=" 1 "Ni=real(vin.vn*conj(iin.in))=" 1 "No=real(vload.vn*conj(iload.in))=" 1 "F=No/(G*Ni)=" 1 "NF=10*log10(F)=" 1 "yes" 0
GND * 1 -480 0 0 0 0 0
SPfile X2 1 -480 -80 14 -29 0 3 "0201AF-111.s2p" 0 "2" 0 "polar" 0 "linear" 0 "short" 0 "none" 0 "block" 0 "SOT23" 0
SPfile X1 1 50 -160 14 -29 0 3 "0201AF-111.s2p" 0 "2" 0 "polar" 0 "linear" 0 "short" 0 "none" 0 "block" 0 "SOT23" 0
GND * 1 -530 0 0 0 0 0
Vac V4 5 -740 -230 -26 18 0 3 "1" 1 "f1" 0 "0" 0 "0" 0 "SUBCLICK" 0
</Components>
<Wires>
-210 0 -210 20 "" 0 0 0 ""
-290 -60 -210 -60 "" 0 0 0 ""
-290 0 -210 0 "" 0 0 0 ""
-210 -130 -210 -60 "" 0 0 0 ""
-210 -230 -210 -190 "" 0 0 0 ""
-270 -160 -240 -160 "vin" -240 -260 13 ""
-570 -160 -550 -160 "" 0 0 0 ""
-550 -160 -550 -140 "" 0 0 0 ""
-570 -140 -550 -140 "" 0 0 0 ""
-570 -80 -570 -50 "" 0 0 0 ""
-240 -230 -210 -230 "" 0 0 0 ""
-240 -170 -240 -160 "" 0 0 0 ""
-210 -390 -210 -230 "" 0 0 0 ""
-210 -460 -210 -450 "" 0 0 0 ""
-370 -460 -210 -460 "" 0 0 0 ""
-370 -460 -370 -330 "" 0 0 0 ""
-110 -460 -80 -460 "" 0 0 0 ""
-210 -460 -170 -460 "" 0 0 0 ""
-210 -230 -160 -230 "" 0 0 0 ""
-100 -230 -30 -230 "" 0 0 0 ""
-390 -160 -370 -160 "" 0 0 0 ""
-370 -160 -330 -160 "" 0 0 0 ""
-370 -270 -370 -160 "" 0 0 0 ""
-310 150 -310 170 "" 0 0 0 ""
-310 150 -210 150 "" 0 0 0 ""
-210 150 -210 200 "" 0 0 0 ""
-310 230 -310 250 "" 0 0 0 ""
-280 200 -210 200 "" 0 0 0 ""
-80 230 -80 260 "" 0 0 0 ""
-210 -60 -80 -60 "" 0 0 0 ""
-80 -60 -80 30 "" 0 0 0 ""
-210 200 -110 200 "" 0 0 0 ""
-80 90 -80 170 "" 0 0 0 ""
-820 -160 -800 -160 "" 0 0 0 ""
-800 -160 -780 -160 "" 0 0 0 ""
-800 -230 -800 -160 "" 0 0 0 ""
-800 -230 -770 -230 "" 0 0 0 ""
-720 -160 -660 -160 "" 0 0 0 ""
-660 -160 -630 -160 "" 0 0 0 ""
-660 -230 -660 -160 "vsource" -630 -270 9 ""
-710 -230 -660 -230 "" 0 0 0 ""
50 -130 50 -90 "" 0 0 0 ""
30 -230 50 -230 "" 0 0 0 ""
50 -230 90 -230 "" 0 0 0 ""
50 -230 50 -190 "" 0 0 0 ""
-70 -160 -70 -130 "" 0 0 0 ""
-70 -160 20 -160 "" 0 0 0 ""
150 -230 320 -230 "" 0 0 0 ""
320 -230 320 -210 "" 0 0 0 ""
320 -150 320 -130 "" 0 0 0 ""
320 -70 320 -30 "" 0 0 0 ""
420 -230 430 -230 "" 0 0 0 ""
320 -230 370 -230 "vload" 290 -330 12 ""
-490 -160 -480 -160 "" 0 0 0 ""
-480 -160 -450 -160 "" 0 0 0 ""
-480 -160 -480 -110 "" 0 0 0 ""
-480 -50 -480 0 "" 0 0 0 ""
-530 -80 -530 0 "" 0 0 0 ""
-530 -80 -510 -80 "" 0 0 0 ""
-210 -460 -210 -460 "vcc" -180 -510 0 ""
-310 90 -310 90 "vcc" -370 40 0 ""
</Wires>
<Diagrams>
<Tab 557 578 533 149 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 20 315 0 225 "" "" "">
	<"rollet()" "" #0000ff 0 3 1 0 0 0 "">
	<"abs(detS())" "" #0000ff 0 3 1 0 0 0 "">
</Tab>
<Tab 557 778 533 149 71 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 200 315 0 225 "" "" "">
	<"G" "" #0000ff 0 3 1 0 0 0 "">
	<"NF" "" #0000ff 0 3 1 0 0 0 "">
	<"iload1.i" "" #0000ff 0 3 0 0 0 0 "">
</Tab>
<Rect 551 -145 229 164 31 #c0c0c0 1 10 1 1e+08 1 1e+09 1 0.685379 0.2 1.91604 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"NF" "" #0000ff 2 3 0 0 0 0 "">
	<"NFmin" "" #ff0000 2 3 0 0 0 0 "">
</Rect>
<Smith 1408 348 309 309 71 #c0c0c0 1 00 1 0 1 1 1 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 3 3 0 5 0 0 "">
	  <Mkr 1 52 -88 3 1 0 0 0 50>
	<"Sopt" "" #ff00ff 3 3 0 5 0 0 "">
	  <Mkr 1 182 -288 3 1 0 0 0 50>
</Smith>
<Smith 738 322 352 352 71 #c0c0c0 1 00 1 0 1 1 0 0 4 1 1 0 4 1 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"S[1,1]" "" #0000ff 3 3 0 4 0 0 "">
	  <Mkr 1 412 -112 3 1 0 0 0 50>
	<"stabL()" "" #ff0000 3 3 0 1 0 0 "">
	  <Mkr 3/1 402 -382 3 1 0 0 0 50>
	<"S[2,2]" "" #ff00ff 3 3 0 5 0 0 "">
	  <Mkr 1 -268 -322 3 1 0 0 0 50>
	<"stabS()" "" #00ff00 3 3 0 1 0 0 "">
	  <Mkr 60/1 -248 -92 3 1 0 0 0 50>
</Smith>
<Rect 967 -129 609 329 31 #c0c0c0 1 11 0 0.001 1 0.3 1 1e-14 1 0.0003 1 0 0 0 315 0 225 "" "" "">
	<Legend 10 -100 0>
	<"yvalue(iload.Ib,2*f1)" "" #0055ff 2 3 0 0 0 0 "">
	  <Mkr 0.301055 693 -181 3 1 0 0 0 50>
	<"yvalue(iload.Ib,3*f1)" "" #ff0000 2 3 0 0 0 0 "">
	<"yvalue(iload.Ib,f1)" "" #ff00ff 2 3 0 0 0 0 "">
	  <Mkr 0.301055 353 -421 3 1 0 0 0 50>
	<"alpha1*yvalue(iload.Ib,f1)" "" #00ff00 2 3 0 0 0 0 "">
	<"alpha1*yvalue(iload.Ib,f1)" "" #00ffff 2 3 0 0 0 0 "">
	<"alpha2*yvalue(iload.Ib,f1)^2" "" #000000 2 3 0 0 0 0 "">
</Rect>
</Diagrams>
<Paintings>
Text -352 -1292 14 #ff5500 0 "Use o circuito abaixo como ponto de partida para o projeto de um LNA  \n baseado no transistor BFR92A @ 400 MHz. \n  \n 1 - Modificar o ponto de operação para que o amplificador  \n apresente o maior ganho de potência possível. \n 2 - Verificar e garantir a estabilidade do ampificador para a \n carga escolhida \n 3 - Considerar uma fonte com P_{avs}=-50 dBm@50 \\Omega \n 4 - Considerar uma carga de 50 \\Omega \n 5 - Projetar rede de adaptação (entrada) para garantir NF_{min} \n 6 - Projetar rede de adaptação (saída) para garantir Ganho máximo \n 7 - Refazer item 2 \n 8 - Substituir as fontes de alimentação ideais por circuitos de polarização,  \n considerando apenas uma fonte de tensão de 5 V. \n 9 - Voltar ao item 2  (e itens seguintes) e reajustar o projeto se necessário \n 10 - Verificar todas as figuras de mérito relativas à distorção. \n 11 - Trocar todos os componentes passivos por modelos de fabricantes  \n (usar modelos da Murata e/ou Coilcraft) \n 12 - Reavaliar o amplificador e readequar o projeto se necessário. \n 13 - Plotar histogramas das principais figuras de mérito após fazer  \n simulação de Monte Carlo considerando a tolerância dos componentes."
</Paintings>
