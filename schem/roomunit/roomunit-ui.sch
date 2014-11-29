v 20130925 2
C 40000 40000 0 0 0 title-bordered-A3-license.sym
{
T 49500 40600 15 10 1 1 0 0 1
license=CC-BY-SA 4.0
T 53300 40600 15 10 1 1 0 0 1
revision=1.0
T 53300 40300 15 10 1 1 0 0 1
copyright=Jonatan Åkerlind 2013
}
C 55500 44500 1 0 1 switch-pushbutton-no-1.sym
{
T 55100 44800 5 10 1 1 0 6 1
refdes=S200
T 55100 45100 5 10 0 0 0 6 1
device=SWITCH_PUSHBUTTON_NO
T 55500 44500 5 10 0 0 0 0 1
farnell-no=9471634
T 55500 44500 5 10 0 0 0 0 1
comment=Switchcap: 9561544
T 55500 44500 5 10 0 0 0 0 1
footprint=MCDTS2
}
C 55500 43900 1 0 1 switch-pushbutton-no-1.sym
{
T 55100 44200 5 10 1 1 0 6 1
refdes=S201
T 55100 44500 5 10 0 0 0 6 1
device=SWITCH_PUSHBUTTON_NO
T 55500 43900 5 10 0 0 0 0 1
farnell-no=9471634
T 55500 43900 5 10 0 0 0 0 1
comment=Switchcap: 9561544
T 55500 43900 5 10 0 0 0 0 1
footprint=MCDTS2
}
C 55500 43300 1 0 1 switch-pushbutton-no-1.sym
{
T 55100 43600 5 10 1 1 0 6 1
refdes=S202
T 55100 43900 5 10 0 0 0 6 1
device=SWITCH_PUSHBUTTON_NO
T 55500 43300 5 10 0 0 0 0 1
farnell-no=9471634
T 55500 43300 5 10 0 0 0 0 1
comment=Switchcap: 9561544
T 55500 43300 5 10 0 0 0 0 1
footprint=MCDTS2
}
C 55500 42700 1 0 1 switch-pushbutton-no-1.sym
{
T 55100 43000 5 10 1 1 0 6 1
refdes=S203
T 55100 43300 5 10 0 0 0 6 1
device=SWITCH_PUSHBUTTON_NO
T 55500 42700 5 10 0 0 0 0 1
farnell-no=9471634
T 55500 42700 5 10 0 0 0 0 1
comment=Switchcap: 9561544
T 55500 42700 5 10 0 0 0 0 1
footprint=MCDTS2
}
C 56100 41900 1 0 1 gnd-1.sym
N 56000 42200 56000 44500 4
N 56000 44500 55500 44500 4
N 55500 43900 56000 43900 4
N 55500 43300 56000 43300 4
N 55500 42700 56000 42700 4
N 54500 44500 53100 44500 4
N 50800 43900 54500 43900 4
N 53100 43300 54500 43300 4
N 52800 42700 54500 42700 4
C 40800 48400 1 0 0 in-1.sym
{
T 40800 48700 5 10 0 0 0 0 1
device=INPUT
T 40900 48500 5 10 1 1 0 0 1
refdes=SCL
}
C 40800 48800 1 0 0 in-1.sym
{
T 40800 49100 5 10 0 0 0 0 1
device=INPUT
T 40900 48900 5 10 1 1 0 0 1
refdes=RESET
}
C 40800 48200 1 0 0 in-1.sym
{
T 40800 48500 5 10 0 0 0 0 1
device=INPUT
T 40900 48300 5 10 1 1 0 0 1
refdes=SDA
}
N 41400 48300 42700 48300 4
N 42400 48500 41400 48500 4
N 41400 48900 43500 48900 4
C 40500 45400 1 0 0 in-1.sym
{
T 40500 45700 5 10 0 0 0 0 1
device=INPUT
T 40500 45700 5 10 1 1 0 0 1
refdes=VDD3.3
}
C 40500 44200 1 0 0 in-1.sym
{
T 40500 44500 5 10 0 0 0 0 1
device=INPUT
T 40500 44500 5 10 1 1 0 0 1
refdes=GND
}
C 41600 45900 1 0 0 3.3V-plus-1.sym
C 41700 43700 1 0 0 gnd-1.sym
N 41100 45500 41800 45500 4
N 41800 45300 41800 45900 4
N 41100 44300 41800 44300 4
N 41800 44000 41800 44400 4
C 44600 41900 1 0 0 attiny24a.sym
{
T 50500 44900 5 10 0 0 0 0 1
footprint=SO14
T 50500 45300 5 10 0 0 0 0 1
device=ATtiny24A/44A/84A
T 47600 44000 5 10 1 1 0 3 1
refdes=U201
T 44600 41900 5 10 0 0 0 0 1
farnell-no=1699395
}
N 44600 43700 44000 43700 4
N 50800 42700 52200 42700 4
N 52200 42700 52200 47200 4
N 49900 47200 52200 47200 4
N 49500 47000 51900 47000 4
N 51100 46000 51100 43100 4
N 51100 43100 50800 43100 4
N 50800 42900 51100 42900 4
N 51100 42900 51100 41700 4
N 50800 43300 51400 43300 4
N 51400 41400 51400 43300 4
N 42700 41700 51100 41700 4
N 42700 41700 42700 48300 4
N 44600 43500 43500 43500 4
N 43500 43500 43500 48900 4
N 51400 41400 42400 41400 4
N 42400 41400 42400 48500 4
N 50800 43500 52800 43500 4
N 52800 43500 52800 42700 4
N 53100 43300 53100 43700 4
N 53100 43700 50800 43700 4
N 53100 44500 53100 44100 4
N 53100 44100 50800 44100 4
N 44000 43700 44000 46200 4
C 47300 45400 1 0 0 3.3V-plus-1.sym
C 47400 40700 1 0 0 gnd-1.sym
N 47500 41000 47500 41900 4
N 47500 45400 47500 45100 4
C 55400 45700 1 0 0 out-1.sym
{
T 55400 46000 5 10 0 0 0 0 1
device=OUTPUT
T 55400 46000 5 10 1 1 0 0 1
refdes=MISO
}
N 55400 45800 51700 45800 4
N 51100 46000 51300 46000 4
N 51700 46200 51900 46200 4
N 51900 46200 51900 47000 4
C 51300 45700 1 0 0 jumper_3pin.sym
{
T 51400 46600 5 10 1 1 0 0 1
refdes=J200
T 51400 46400 5 10 1 1 0 0 1
value=JMP
T 51400 45500 5 8 0 1 0 0 1
footprint=JMP_3PIN
T 51500 47700 5 8 0 0 0 0 1
symversion=1.0
}
N 44200 43900 44600 43900 4
C 55400 45100 1 0 0 out-1.sym
{
T 55400 45400 5 10 0 0 0 0 1
device=OUTPUT
T 55400 45400 5 10 1 1 0 0 1
refdes=INT
}
N 44600 44100 44400 44100 4
N 44400 44100 44400 45200 4
N 44400 45200 55400 45200 4
N 47900 46600 47900 50100 4
N 47900 46600 43500 46600 4
N 44200 43900 44200 46000 4
N 44200 46000 47500 46000 4
N 47500 46000 47500 49200 4
N 44000 46200 47300 46200 4
N 47300 46200 47300 48900 4
C 42000 45300 1 90 1 capacitor-1.sym
{
T 41300 45100 5 10 0 0 90 6 1
device=CAPACITOR
T 41500 45100 5 10 1 1 90 6 1
refdes=C202
T 41100 45100 5 10 0 0 90 6 1
symversion=0.1
T 42000 45300 5 10 0 0 0 0 1
farnell-no=2309011RL
T 42200 44600 5 10 1 1 90 0 1
value=0.1u
T 42000 45300 5 10 0 0 0 0 1
footprint=1005m
}
T 40500 42800 9 10 1 0 0 0 3
Decoupling capacitor
for ATtiny24A, put close
to pins 1 and 14
C 44800 48100 1 0 0 connector8-1.sym
{
T 44900 51300 5 10 0 0 0 0 1
device=CONNECTOR_8
T 44900 50700 5 10 1 1 0 0 1
refdes=CONN200
T 44800 48100 5 10 0 0 0 0 1
footprint=MOLEX_PICOFLEX_90325-0008
T 44800 48100 5 10 0 0 0 0 1
farnell-no=673237
T 44800 48100 5 10 0 0 0 0 1
comment=mating ribbon cable receptacle farnell-no: 673160
}
N 47300 48900 46500 48900 4
N 47500 49200 46500 49200 4
N 49500 47000 49500 49500 4
N 49500 49500 46500 49500 4
N 49900 47200 49900 49800 4
N 49900 49800 46500 49800 4
N 47900 50100 46500 50100 4
C 46700 50700 1 0 0 3.3V-plus-1.sym
C 46800 47700 1 0 0 gnd-1.sym
N 46900 48000 46900 48300 4
N 46900 48300 46500 48300 4
N 46900 50700 46900 50400 4
N 46900 50400 46500 50400 4
C 47100 48700 1 180 0 nc-left-1.sym
{
T 47100 48300 5 10 0 0 180 0 1
value=NoConnection
T 47100 47900 5 10 0 0 180 0 1
device=DRC_Directive
}
N 46600 48600 46500 48600 4
