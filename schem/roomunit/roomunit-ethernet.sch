v 20110115 2
C 40100 40000 0 0 0 title-bordered-A3-svn.sym
{
T 49500 40600 15 10 1 1 0 0 1
svnurl=$URL$
T 53400 40600 15 10 1 1 0 0 1
svnrevision=$Rev$
T 53400 40300 15 10 1 1 0 0 1
svnauthor=$Author$
}
C 43300 44700 1 0 0 micrel_ksz8851snl.sym
{
T 45200 47600 5 10 1 1 0 3 1
refdes=U301
T 45200 47400 5 10 1 1 0 3 1
device=KSZ8851SNL
T 45200 47200 5 10 1 1 0 3 1
description=Micrel KSZ8851SNL
T 45200 47000 5 10 1 1 0 3 1
footprint=MLF32
}
C 49700 45600 1 0 0 tyco_electronics_ethernet_poe_leds.sym
{
T 52300 47600 5 10 1 1 0 3 1
refdes=CONN300
T 52300 47400 5 10 1 1 0 3 1
device=MAG45
T 52300 47200 5 10 1 1 0 3 1
description=Ethernet conn w. magn, LEDs, PoE diodes
T 52300 47000 5 10 1 1 0 3 1
footprint=MAG45
}
N 49700 47800 47100 47800 4
N 49700 48000 47100 48000 4
N 47100 47400 48800 47400 4
N 48800 47400 48800 47200 4
N 48800 47200 49700 47200 4
N 49700 47000 48600 47000 4
N 48600 47000 48600 47200 4
N 48600 47200 47100 47200 4
N 47100 46600 48400 46600 4
N 48400 46600 48400 49600 4
N 48400 49600 53000 49600 4
N 53000 49600 53000 48600 4
N 47100 46800 48200 46800 4
N 48200 46800 48200 45100 4
N 48200 45100 53000 45100 4
N 53000 45100 53000 45600 4
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
C 54700 43800 1 0 0 out-1.sym
{
T 54700 44100 5 10 0 0 0 0 1
device=OUTPUT
T 54700 44100 5 10 1 1 0 0 1
refdes=POE+
}
C 54700 43300 1 0 0 out-1.sym
{
T 54700 43600 5 10 0 0 0 0 1
device=OUTPUT
T 54700 43600 5 10 1 1 0 0 1
refdes=POE-
}
N 49700 46200 49300 46200 4
N 49300 46200 49300 43900 4
N 49300 43900 54700 43900 4
N 49700 46400 49100 46400 4
N 49100 46400 49100 43400 4
N 49100 43400 54700 43400 4
C 51300 48900 1 0 0 3.3V-plus-1.sym
C 50800 45400 1 0 0 3.3V-plus-1.sym
N 51500 48900 51500 48600 4
N 51500 45600 51500 45300 4
N 51500 45300 51000 45300 4
N 51000 45300 51000 45400 4
C 44900 43600 1 0 0 gnd-1.sym
C 45400 43600 1 0 0 gnd-1.sym
C 46200 43400 1 90 0 resistor-1.sym
{
T 45800 43700 5 10 0 0 90 0 1
device=RESISTOR
T 45900 43600 5 10 1 1 90 0 1
refdes=R302
T 46400 43600 5 10 1 1 90 0 1
value=3.01K 1%
}
C 42300 46300 1 0 0 crystal-1.sym
{
T 42500 46800 5 10 0 0 0 0 1
device=CRYSTAL
T 42500 46600 5 10 1 1 0 0 1
refdes=U300
T 42500 47000 5 10 0 0 0 0 1
symversion=0.1
T 42100 46100 5 10 1 1 0 0 1
value=25MHz 50ppm
}
C 43200 48200 1 90 0 resistor-1.sym
{
T 42800 48500 5 10 0 0 90 0 1
device=RESISTOR
T 42900 48400 5 10 1 1 90 0 1
refdes=R300
T 43400 48400 5 10 1 1 90 0 1
value=4.7K
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
T 46700 40900 5 10 0 0 90 0 1
symversion=0.1
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
T 41100 40900 5 10 0 0 90 0 1
symversion=0.1
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
T 40300 40900 5 10 0 0 90 0 1
symversion=0.1
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
T 44400 40900 5 10 0 0 90 0 1
symversion=0.1
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
T 45300 40900 5 10 0 0 90 0 1
symversion=0.1
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
C 49100 47500 1 0 0 nc-left-1.sym
{
T 49100 47900 5 10 0 0 0 0 1
value=NoConnection
T 49100 48300 5 10 0 0 0 0 1
device=DRC_Directive
}
C 49000 47300 1 0 0 nc-left-1.sym
{
T 49000 47700 5 10 0 0 0 0 1
value=NoConnection
T 49000 48100 5 10 0 0 0 0 1
device=DRC_Directive
}
N 49600 47600 49700 47600 4
N 49700 47400 49500 47400 4
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
