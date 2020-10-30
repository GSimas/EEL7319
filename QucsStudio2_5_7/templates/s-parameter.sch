<QucsStudio Schematic 1.0.0>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <OpenDisplay=1>
  <showFrame=0>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Pac P1 1 100 190 18 -26 0 0 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 100 220 0 0 0 0>
  <Pac P2 1 460 190 18 -26 0 0 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND * 1 460 220 0 0 0 0>
  <.SP SP1 1 110 290 0 65 0 0 "log" 1 "10MHz" 1 "10GHz" 1 "151" 1 "no" 0 "1" 0 "2" 0>
  <Eqn Eqn1 1 300 300 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "S22_dB=dB(S[2,2])" 1 "S21_phase=wphase(S[2,1])" 1 "yes" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
