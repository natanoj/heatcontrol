v 20130925 2
C 40100 40000 0 0 0 title-bordered-A3-license.sym
{
T 49600 40600 15 10 1 1 0 0 1
license=CC-BY-SA 4.0
T 53400 40600 15 10 1 1 0 0 1
revision=1.0
T 53400 40300 15 10 1 1 0 0 1
copyright=Jonatan Åkerlind 2013
}
C 43300 44700 1 0 0 micrel_ksz8851snl.sym
{
T 45200 47600 5 10 1 1 0 3 1
refdes=U301
T 45200 47400 5 10 1 1 0 3 1
device=KSZ8851SNL
T 45200 47200 5 10 0 1 0 3 1
description=Micrel KSZ8851SNL
T 45200 47000 5 10 0 1 0 3 1
footprint=MLF32
T 43300 44700 5 10 0 1 0 0 1
farnell-no=1961910
T 43300 44700 5 10 0 0 0 0 1
comment=LQFP available: 1961903
}
N 51900 47800 47100 47800 4
{
T 47700 47800 5 10 1 1 0 0 1
netname=RXN
}
N 51900 48000 47100 48000 4
{
T 47700 48000 5 10 1 1 0 0 1
netname=RXP
}
N 47100 47400 51900 47400 4
{
T 47700 47400 5 10 1 1 0 0 1
netname=TXP
}
N 47100 47200 51900 47200 4
{
T 47700 47200 5 10 1 1 0 0 1
netname=TXN
}
N 47100 46600 47400 46600 4
N 47400 46600 47400 49400 4
N 47400 49400 52100 49400 4
N 55200 49400 55200 48600 4
N 47100 46800 47600 46800 4
N 47600 46800 47600 44900 4
N 47600 44900 52100 44900 4
N 55200 44900 55200 45600 4
N 45300 49600 45300 49800 4
N 45300 49800 45700 49800 4
{
T 45200 49900 5 10 1 1 0 0 1
netname=VDD1.8
}
N 45500 49800 45500 49600 4
N 45700 49800 45700 49600 4
C 40800 47700 1 0 0 in-1.sym
{
T 40800 48000 5 10 0 0 0 0 1
device=INPUT
T 40900 47900 5 10 1 1 0 0 1
refdes=CSN
}
C 40800 47300 1 0 0 in-1.sym
{
T 40800 47600 5 10 0 0 0 0 1
device=INPUT
T 40900 47500 5 10 1 1 0 0 1
refdes=SCLK
}
C 40800 46900 1 0 0 in-1.sym
{
T 40800 47200 5 10 0 0 0 0 1
device=INPUT
T 40900 47100 5 10 1 1 0 0 1
refdes=SI
}
N 42600 48000 43300 48000 4
N 43300 47600 41700 47600 4
N 43300 47400 41400 47400 4
N 43300 47200 41700 47200 4
N 42400 47000 43300 47000 4
C 54700 41600 1 0 0 out-1.sym
{
T 54700 41900 5 10 0 0 0 0 1
device=OUTPUT
T 54700 41900 5 10 1 1 0 0 1
refdes=POE+
}
C 54700 43800 1 0 0 out-1.sym
{
T 54700 44100 5 10 0 0 0 0 1
device=OUTPUT
T 54700 44100 5 10 1 1 0 0 1
refdes=POE-
}
N 51300 41700 54700 41700 4
N 51300 43900 54700 43900 4
C 53500 48900 1 0 0 3.3V-plus-1.sym
C 53000 45400 1 0 0 3.3V-plus-1.sym
N 53700 48900 53700 48600 4
N 53700 45600 53700 45300 4
N 53700 45300 53200 45300 4
N 53200 45300 53200 45400 4
C 44900 43600 1 0 0 gnd-1.sym
C 45400 43600 1 0 0 gnd-1.sym
C 46200 43400 1 90 0 resistor-1.sym
{
T 45800 43700 5 10 0 0 90 0 1
device=RESISTOR
T 45900 43600 5 10 1 1 90 0 1
refdes=R302
T 46400 43600 5 10 1 1 90 0 1
value=3.01K
T 46200 43400 5 10 0 1 0 0 1
footprint=1005m
T 46200 43400 5 10 0 1 0 0 1
farnell-no=2072899RL
}
C 42300 46300 1 0 0 crystal-1.sym
{
T 42500 46800 5 10 0 0 0 0 1
device=CRYSTAL
T 42500 46600 5 10 1 1 0 0 1
refdes=U300
T 42500 47000 5 10 0 1 0 0 1
symversion=0.1
T 42100 46100 5 10 1 1 0 0 1
value=25MHz
T 42300 46300 5 10 0 1 0 0 1
footprint=HC49
T 42300 46300 5 10 0 1 0 0 1
farnell-no=1842313
T 42300 46300 5 10 0 1 0 0 1
description=TXC  9C-25.000MAAJ-T  XTAL 30ppm
}
C 43200 48200 1 90 0 resistor-1.sym
{
T 42800 48500 5 10 0 0 90 0 1
device=RESISTOR
T 42900 48400 5 10 1 1 90 0 1
refdes=R300
T 43400 48400 5 10 1 1 90 0 1
value=4.7K
T 43200 48200 5 10 0 1 0 0 1
footprint=1005m
T 43200 48200 5 10 0 1 0 0 1
farnell-no=2447187RL
}
C 42900 49200 1 0 0 3.3V-plus-1.sym
N 43100 49200 43100 49100 4
N 43100 48200 43100 48000 4
C 54700 49800 1 0 0 out-1.sym
{
T 54700 50100 5 10 0 0 0 0 1
device=OUTPUT
T 54700 50100 5 10 1 1 0 0 1
refdes=PME
}
N 44700 49600 44700 50500 4
C 42300 45000 1 90 0 resistor-1.sym
{
T 41900 45300 5 10 0 0 90 0 1
device=RESISTOR
T 42000 45200 5 10 1 1 90 0 1
refdes=R301
T 42500 45200 5 10 1 1 90 0 1
value=4.7K
T 42300 45000 5 10 0 1 0 0 1
footprint=1005m
T 42300 45000 5 10 0 1 0 0 1
farnell-no=2447187RL
}
C 42100 44500 1 0 0 gnd-1.sym
N 43300 46000 42200 46000 4
N 42200 46000 42200 45900 4
N 42200 45000 42200 44800 4
N 44700 44700 44700 44300 4
N 44700 44300 45300 44300 4
N 45300 44300 45300 44700 4
N 45100 44700 45100 44300 4
N 44900 44700 44900 44300 4
N 45000 43900 45000 44300 4
N 45500 43900 45500 44700 4
N 45500 44300 45900 44300 4
N 45900 44300 45900 44700 4
N 45700 44700 45700 44300 4
C 45700 50000 1 0 0 3.3V-plus-1.sym
N 45900 50000 45900 49600 4
C 47200 41700 1 0 0 3.3V-plus-1.sym
C 47600 40700 1 90 0 capacitor-1.sym
{
T 46900 40900 5 10 0 0 90 0 1
device=CAPACITOR
T 47100 40900 5 10 1 1 90 0 1
refdes=C304
T 46700 40900 5 10 0 1 90 0 1
symversion=0.1
T 47600 40700 5 10 0 1 0 0 1
footprint=1005m
T 47300 40700 5 10 1 1 90 0 1
value=0.1u
T 47600 40700 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 47300 40300 1 0 0 gnd-1.sym
N 47400 41600 47400 41700 4
N 47400 40700 47400 40600 4
T 47200 42200 9 10 1 0 0 0 3
De-coupling capacitor
for VDD_A3.3 - AGND
put close to pin 16
C 46000 42900 1 0 0 gnd-1.sym
N 46100 44700 46100 44300 4
N 46100 43400 46100 43200 4
C 40800 44200 1 0 0 in-1.sym
{
T 40800 44500 5 10 0 0 0 0 1
device=INPUT
T 40800 44500 5 10 1 1 0 0 1
refdes=RSTN
}
N 41400 44300 44500 44300 4
N 44500 44300 44500 44700 4
N 43000 46400 43300 46400 4
N 42300 46400 42200 46400 4
N 42200 46400 42200 46800 4
N 42200 46800 43100 46800 4
N 43100 46800 43100 46600 4
N 43100 46600 43300 46600 4
C 42000 40700 1 90 0 capacitor-1.sym
{
T 41300 40900 5 10 0 0 90 0 1
device=CAPACITOR
T 41500 40900 5 10 1 1 90 0 1
refdes=C301
T 41100 40900 5 10 0 1 90 0 1
symversion=0.1
T 42000 40700 5 10 0 1 0 0 1
footprint=1005m
T 41700 40700 5 10 1 1 90 0 1
value=0.1u
T 42000 40700 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 41700 40300 1 0 0 gnd-1.sym
N 41800 41600 41800 41800 4
N 41800 40700 41800 40600 4
C 41200 40700 1 90 0 capacitor-1.sym
{
T 40500 40900 5 10 0 0 90 0 1
device=CAPACITOR
T 40700 40900 5 10 1 1 90 0 1
refdes=C300
T 40300 40900 5 10 0 1 90 0 1
symversion=0.1
T 41200 40700 5 10 0 1 0 0 1
footprint=1005m
T 40900 40700 5 10 1 1 90 0 1
value=0.1u
T 41200 40700 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 40900 40300 1 0 0 gnd-1.sym
N 41000 41600 41000 41800 4
{
T 41000 41900 5 10 1 1 0 0 1
netname=VDD1.8
}
N 41000 40700 41000 40600 4
T 40800 42200 9 10 1 0 0 0 3
De-coupling capacitors for
VDD_A1.8, VDD_D1.8 - DGND
put close to pin 9 and 23
C 44900 50000 1 0 0 3.3V-plus-1.sym
N 44900 49800 44900 49600 4
N 45100 49600 45100 50000 4
N 45100 49800 44900 49800 4
C 44900 41700 1 0 0 3.3V-plus-1.sym
C 45300 40700 1 90 0 capacitor-1.sym
{
T 44600 40900 5 10 0 0 90 0 1
device=CAPACITOR
T 44800 40900 5 10 1 1 90 0 1
refdes=C302
T 44400 40900 5 10 0 1 90 0 1
symversion=0.1
T 45300 40700 5 10 0 1 0 0 1
footprint=1005m
T 45000 40700 5 10 1 1 90 0 1
value=0.1u
T 45300 40700 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 45000 40300 1 0 0 gnd-1.sym
N 45100 41600 45100 41700 4
N 45100 40700 45100 40600 4
T 44900 42200 9 10 1 0 0 0 3
De-coupling capacitors
for VDD_IO - DGND
put close to pin 25 and 30
C 45800 41700 1 0 0 3.3V-plus-1.sym
C 46200 40700 1 90 0 capacitor-1.sym
{
T 45500 40900 5 10 0 0 90 0 1
device=CAPACITOR
T 45700 40900 5 10 1 1 90 0 1
refdes=C303
T 45300 40900 5 10 0 1 90 0 1
symversion=0.1
T 46200 40700 5 10 0 1 0 0 1
footprint=1005m
T 45900 40700 5 10 1 1 90 0 1
value=0.1u
T 46200 40700 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 45900 40300 1 0 0 gnd-1.sym
N 46000 41600 46000 41700 4
N 46000 40700 46000 40600 4
N 41800 41800 41000 41800 4
N 44700 50500 51700 50500 4
N 51700 50500 51700 49900 4
N 51700 49900 54700 49900 4
C 54700 50300 1 0 0 out-1.sym
{
T 54700 50600 5 10 0 0 0 0 1
device=OUTPUT
T 54700 50600 5 10 1 1 0 0 1
refdes=INTRN
}
C 54700 50800 1 0 0 out-1.sym
{
T 54700 51100 5 10 0 0 0 0 1
device=OUTPUT
T 54700 51100 5 10 1 1 0 0 1
refdes=SO
}
N 42600 48000 42600 50700 4
N 42600 50700 51900 50700 4
N 51900 50700 51900 50400 4
N 51900 50400 54700 50400 4
N 54700 50900 42400 50900 4
N 42400 50900 42400 47000 4
N 41700 47200 41700 47000 4
N 41700 47000 41400 47000 4
N 41700 47600 41700 47800 4
N 41700 47800 41400 47800 4
T 41400 43200 9 10 1 0 0 0 5
Keep digital ground (DGND) and analog
ground (AGND) as two separate planes
with AGND covering the areas around
the Ethernet connector and PHY lines
Connect planes together at one point
C 40800 50300 1 0 0 in-1.sym
{
T 40800 50600 5 10 0 0 0 0 1
device=INPUT
T 40800 50600 5 10 1 1 0 0 1
refdes=VDD3.3
}
C 40800 49700 1 0 0 in-1.sym
{
T 40800 50000 5 10 0 0 0 0 1
device=INPUT
T 40800 50000 5 10 1 1 0 0 1
refdes=GND
}
C 41600 50700 1 0 0 3.3V-plus-1.sym
C 41700 49200 1 0 0 gnd-1.sym
N 41400 50400 41800 50400 4
N 41800 50400 41800 50700 4
N 41400 49800 41800 49800 4
N 41800 49800 41800 49500 4
N 51100 47600 51900 47600 4
C 42700 45700 1 0 0 nc-left-1.sym
{
T 42700 46100 5 10 0 0 0 0 1
value=NoConnection
T 42700 46500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 42600 45500 1 0 0 nc-left-1.sym
{
T 42600 45900 5 10 0 0 0 0 1
value=NoConnection
T 42600 46300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 43200 45800 43300 45800 4
N 43300 45600 43100 45600 4
C 51900 45600 1 0 0 stewart_connector_SI-52008-F.sym
{
T 54500 47600 5 10 1 1 0 3 1
refdes=CONN300
T 54500 47400 5 10 1 1 0 3 1
device=SI-52008-F
T 54500 47200 5 10 1 1 0 3 1
description=Ethernet conn w. magn, LEDs, PoE
T 54500 47000 5 10 1 1 0 3 1
footprint=SI-52008-F
T 51900 45600 5 10 0 0 0 0 1
farnell-no=1572195
}
C 52100 49300 1 0 0 resistor-small-1.sym
{
T 52050 49700 5 10 0 0 0 0 1
device=RESISTOR
T 52250 49550 5 10 1 1 0 0 1
refdes=R303
}
C 52100 44800 1 0 0 resistor-small-1.sym
{
T 52050 45200 5 10 0 0 0 0 1
device=RESISTOR
T 52250 45050 5 10 1 1 0 0 1
refdes=R304
}
N 52700 49400 55200 49400 4
N 52700 44900 55200 44900 4
C 50500 41900 1 0 0 bourns-bridge-rectifier-1.sym
{
T 51200 42575 5 10 1 1 0 0 1
refdes=U302
T 51700 41775 5 8 0 0 0 0 1
device=DIODE-BRIDGE
T 51700 41900 5 8 0 0 0 0 1
footprint=SOD-106
T 50500 41900 5 10 0 0 0 0 1
farnell-no=1899476
}
C 52700 41900 1 0 0 bourns-bridge-rectifier-1.sym
{
T 53400 42575 5 10 1 1 0 0 1
refdes=U303
T 53900 41775 5 8 0 0 0 0 1
device=DIODE-BRIDGE
T 53900 41900 5 8 0 0 0 0 1
footprint=SOD-106
T 52700 41900 5 10 0 0 0 0 1
farnell-no=1899476
}
N 51300 43900 51300 43500 4
N 53500 43500 53500 43900 4
N 51300 41700 51300 41900 4
N 53500 41900 53500 41700 4
N 51900 46800 50400 46800 4
N 50400 42700 50400 46800 4
N 50400 42700 50500 42700 4
N 51900 46600 50600 46600 4
N 50600 46600 50600 44100 4
N 52100 42700 52300 42700 4
N 51900 46400 51500 46400 4
N 51500 46400 51500 44300 4
N 52500 42700 52700 42700 4
N 51900 46200 51700 46200 4
N 51700 46200 51700 44700 4
N 51700 44700 54400 44700 4
N 54400 44700 54400 42700 4
N 54400 42700 54300 42700 4
C 49300 48900 1 0 0 resistor-small-1.sym
{
T 49250 49300 5 10 0 0 0 0 1
device=RESISTOR
T 49450 49150 5 10 1 1 0 0 1
refdes=R305
T 49700 49000 5 10 1 1 0 0 1
value=49.9
}
C 49300 48400 1 0 0 resistor-small-1.sym
{
T 49250 48800 5 10 0 0 0 0 1
device=RESISTOR
T 49450 48650 5 10 1 1 0 0 1
refdes=R306
T 49700 48500 5 10 1 1 0 0 1
value=49.9
}
C 49300 46700 1 0 0 resistor-small-1.sym
{
T 49250 47100 5 10 0 0 0 0 1
device=RESISTOR
T 49450 46950 5 10 1 1 0 0 1
refdes=R307
T 49700 46800 5 10 1 1 0 0 1
value=49.9
}
C 49300 46200 1 0 0 resistor-small-1.sym
{
T 49250 46600 5 10 0 0 0 0 1
device=RESISTOR
T 49450 46450 5 10 1 1 0 0 1
refdes=R308
T 49700 46300 5 10 1 1 0 0 1
value=49.9
}
C 48100 48500 1 0 0 capacitor-1.sym
{
T 48300 49200 5 10 0 0 0 0 1
device=CAPACITOR
T 48300 49000 5 10 1 1 0 0 1
refdes=C305
T 48300 49400 5 10 0 0 0 0 1
symversion=0.1
T 48100 48500 5 10 1 1 0 0 1
value=0.1u
}
C 48100 46300 1 0 0 capacitor-1.sym
{
T 48300 47000 5 10 0 0 0 0 1
device=CAPACITOR
T 48300 46800 5 10 1 1 0 0 1
refdes=C306
T 48300 47200 5 10 0 0 0 0 1
symversion=0.1
T 48100 46300 5 10 1 1 0 0 1
value=0.1u
}
C 47800 45900 1 0 0 gnd-1.sym
C 47800 48200 1 0 0 gnd-1.sym
N 50000 47400 50000 46800 4
N 50000 46800 49900 46800 4
N 50200 47200 50200 46300 4
N 50200 46300 49900 46300 4
N 49300 46800 49100 46800 4
N 49100 46300 49100 46800 4
N 49100 46500 49000 46500 4
N 49300 46300 49100 46300 4
N 48100 46500 47900 46500 4
N 47900 46500 47900 46200 4
N 50000 47800 50000 48500 4
N 50000 48500 49900 48500 4
N 50200 48000 50200 49000 4
N 50200 49000 49900 49000 4
N 49300 49000 49100 49000 4
N 49100 48500 49100 49000 4
N 49100 48700 49000 48700 4
N 49300 48500 49100 48500 4
N 48100 48700 47900 48700 4
N 47900 48700 47900 48500 4
C 51000 45000 1 0 0 gnd-1.sym
C 51300 45400 1 90 0 capacitor-1.sym
{
T 50600 45600 5 10 0 0 90 0 1
device=CAPACITOR
T 50800 45600 5 10 1 1 90 0 1
refdes=C307
T 50400 45600 5 10 0 0 90 0 1
symversion=0.1
T 51300 45400 5 10 1 1 90 0 1
value=10u
}
C 50900 48300 1 0 0 3.3V-plus-1.sym
N 51100 45300 51100 45400 4
N 51100 46300 51100 48300 4
N 51500 44300 52500 44300 4
N 52500 44300 52500 42700 4
N 50600 44100 52300 44100 4
N 52300 44100 52300 42700 4
C 47500 42900 1 0 0 srv05-4-1.sym
{
T 47800 44100 5 10 1 1 0 0 1
refdes=U304
T 48900 44075 5 8 0 0 0 0 1
device=SRV04-5
T 48900 45300 5 8 0 0 0 0 1
footprint=SOT23-6
T 47500 42900 5 10 0 0 0 0 1
farnell-no=1824870
}
N 47500 43500 47000 43500 4
N 47000 43500 47000 43200 4
N 47500 43200 47200 43200 4
{
T 47200 43200 5 10 1 1 0 0 1
netname=TXP
}
N 47500 43800 47200 43800 4
{
T 47200 43800 5 10 1 1 0 0 1
netname=RXP
}
N 49200 43800 49700 43800 4
{
T 49200 43800 5 10 1 1 0 0 1
netname=RXN
}
N 49200 43200 49700 43200 4
{
T 49200 43200 5 10 1 1 0 0 1
netname=TXN
}
N 49200 43500 49900 43500 4
N 49900 43500 49900 44300 4
C 46900 42900 1 0 0 gnd-1.sym
C 49700 44300 1 0 0 3.3V-plus-1.sym
