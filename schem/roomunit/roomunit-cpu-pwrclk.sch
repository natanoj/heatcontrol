v 20130925 2
C 40000 40000 0 0 0 title-bordered-A3-license.sym
{
T 49400 40600 15 10 1 1 0 0 1
license=CC-BY-SA 4.0
T 53300 40600 15 10 1 1 0 0 1
revision=1.0
T 53300 40300 15 10 1 1 0 0 1
copyright=Jonatan Åkerlind 2013
}
C 50900 45600 1 0 0 atmega1284ppower.sym
{
T 53900 47900 5 10 0 0 0 0 1
footprint=TQFP44
T 53900 48300 5 10 0 0 0 0 1
device=ATmega1284P
T 52600 46600 5 10 1 1 0 3 1
refdes=U400
T 50900 45600 5 10 0 1 0 0 1
farnell-no=1715480
}
C 51000 49600 1 0 0 3.3V-plus-1.sym
N 51200 48500 51200 49600 4
N 51200 48500 52400 48500 4
N 52400 48500 52400 48100 4
N 52800 48100 52800 49500 4
C 51500 49500 1 0 0 coil-1.sym
{
T 51700 49900 5 10 0 0 0 0 1
device=COIL
T 51700 49700 5 10 1 1 0 0 1
refdes=L450
T 51700 50100 5 10 0 1 0 0 1
symversion=0.1
T 51700 49300 5 10 1 1 0 0 1
value=10uH
T 51500 49500 5 10 0 1 0 0 1
footprint=ELLYFJ100M
T 51500 49500 5 10 0 1 0 0 1
farnell-no=2145714
}
C 52900 49300 1 0 0 capacitor-1.sym
{
T 53100 50000 5 10 0 0 0 0 1
device=CAPACITOR
T 53100 49800 5 10 1 1 0 0 1
refdes=C450
T 53100 50200 5 10 0 1 0 0 1
symversion=0.1
T 53400 49600 5 10 1 1 0 0 1
value=0.1u
T 52900 49300 5 10 0 1 0 0 1
footprint=1005m
T 52900 49300 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 54000 48600 1 0 0 gnd-1.sym
N 54100 48900 54100 49500 4
N 54100 49500 53800 49500 4
N 52900 49500 52500 49500 4
N 51500 49500 51200 49500 4
C 53400 48200 1 90 0 capacitor-1.sym
{
T 52700 48400 5 10 0 0 90 0 1
device=CAPACITOR
T 53500 48200 5 10 1 1 90 0 1
refdes=C453
T 52500 48400 5 10 0 1 90 0 1
symversion=0.1
T 53400 48200 5 10 0 1 0 0 1
footprint=1005m
T 53100 48800 5 10 1 1 90 0 1
value=0.1u
T 53400 48200 5 10 0 1 0 0 1
farnell-no=2309011RL
}
N 53200 49100 53200 49200 4
N 53200 49200 54100 49200 4
N 53200 48200 53200 48100 4
C 52500 43900 1 0 0 gnd-1.sym
C 47500 44900 1 90 0 switch-pushbutton-no-1.sym
{
T 47200 45300 5 10 1 1 90 0 1
refdes=S450
T 46900 45300 5 10 0 0 90 0 1
device=EVQQ2W02W
T 47500 44900 5 10 0 1 0 0 1
farnell-no=1821256
T 47500 44900 5 10 0 0 0 0 1
footprint=EVQQ2
}
N 42500 47000 47500 47000 4
C 41900 46900 1 0 0 in-1.sym
{
T 41900 47200 5 10 0 0 0 0 1
device=INPUT
T 41000 46900 5 10 1 1 0 0 1
refdes=RESET
}
N 52200 48100 52200 48500 4
N 52000 48100 52000 48500 4
N 52300 45600 52300 44600 4
N 52300 44600 52900 44600 4
N 52600 44600 52600 44200 4
N 52900 44600 52900 45600 4
N 52700 45600 52700 44600 4
N 52500 45600 52500 44600 4
C 50700 45900 1 90 1 capacitor-3.sym
{
T 50000 45700 5 10 0 0 90 6 1
device=POLARIZED_CAPACITOR
T 50200 45700 5 10 1 1 90 6 1
refdes=C452
T 49800 45700 5 10 0 1 90 6 1
symversion=0.1
T 50900 45800 5 10 1 1 90 6 1
value=18p
T 50700 45900 5 10 0 1 0 0 1
farnell-no=1758947RL
T 50700 45900 5 10 0 1 0 0 1
footprint=1005m
}
C 49900 43900 1 0 0 gnd-1.sym
N 50900 47000 50200 47000 4
N 49600 45900 49600 46700 4
N 50500 45900 50500 47000 4
N 50500 45000 50500 44600 4
N 47500 44600 50500 44600 4
N 50000 44600 50000 44200 4
N 49600 44600 49600 45000 4
C 47300 49600 1 0 0 3.3V-plus-1.sym
C 47600 47500 1 90 0 resistor-1.sym
{
T 47200 47800 5 10 0 0 90 0 1
device=RESISTOR
T 47300 47700 5 10 1 1 90 0 1
refdes=R450
T 47800 47700 5 10 1 1 90 0 1
value=4.7K
T 47600 47500 5 10 0 1 0 0 1
footprint=1005m
T 47600 47500 5 10 0 1 0 0 1
farnell-no=2447187RL
}
N 50900 46400 47500 46400 4
N 47500 45900 47500 47500 4
N 47500 48400 47500 49600 4
N 47500 44600 47500 44900 4
C 49800 45900 1 90 1 capacitor-3.sym
{
T 49100 45700 5 10 0 0 90 6 1
device=POLARIZED_CAPACITOR
T 49300 45700 5 10 1 1 90 6 1
refdes=C451
T 48900 45700 5 10 0 1 90 6 1
symversion=0.1
T 50000 45800 5 10 1 1 90 6 1
value=18p
T 49800 45900 5 10 0 1 0 0 1
farnell-no=1758947RL
T 49800 45900 5 10 0 1 0 0 1
footprint=1005m
}
N 50900 46800 50200 46800 4
N 50200 46800 50200 46600 4
N 50200 46600 49600 46600 4
C 49700 46700 1 90 0 crystal-1.sym
{
T 49200 46900 5 10 0 0 90 0 1
device=CRYSTAL
T 49400 46900 5 10 1 1 90 0 1
refdes=U450
T 49000 46900 5 10 0 1 90 0 1
symversion=0.1
T 49900 46700 5 10 1 1 90 0 1
value=20MHz
T 49700 46700 5 10 0 1 0 0 1
footprint=HC49
T 49700 46700 5 10 0 1 0 0 1
farnell-no=1842302
}
N 50200 47000 50200 47500 4
N 49600 47500 49600 47400 4
N 49600 47500 50200 47500 4
C 41900 45200 1 0 0 in-1.sym
{
T 41900 45500 5 10 0 0 0 0 1
device=INPUT
T 41900 45500 5 10 1 1 0 0 1
refdes=VDD3.3
}
C 41900 44000 1 0 0 in-1.sym
{
T 41900 44300 5 10 0 0 0 0 1
device=INPUT
T 41900 44300 5 10 1 1 0 0 1
refdes=GND
}
C 42900 45700 1 0 0 3.3V-plus-1.sym
C 43000 43500 1 0 0 gnd-1.sym
N 42500 45300 43100 45300 4
N 43100 45300 43100 45700 4
N 42500 44100 43100 44100 4
N 43100 44100 43100 43800 4
C 44900 41800 1 90 0 capacitor-1.sym
{
T 44200 42000 5 10 0 0 90 0 1
device=CAPACITOR
T 44400 42000 5 10 1 1 90 0 1
refdes=C454
T 44000 42000 5 10 0 1 90 0 1
symversion=0.1
T 44900 41800 5 10 0 1 0 0 1
footprint=1005m
T 44900 41800 5 10 1 1 0 0 1
value=0.1u
T 44900 41800 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 45700 41800 1 90 0 capacitor-1.sym
{
T 45000 42000 5 10 0 0 90 0 1
device=CAPACITOR
T 45200 42000 5 10 1 1 90 0 1
refdes=C455
T 44800 42000 5 10 0 1 90 0 1
symversion=0.1
T 45700 41800 5 10 0 1 0 0 1
footprint=1005m
T 45700 41800 5 10 1 1 0 0 1
value=0.1u
T 45700 41800 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 46500 41800 1 90 0 capacitor-1.sym
{
T 45800 42000 5 10 0 0 90 0 1
device=CAPACITOR
T 46000 42000 5 10 1 1 90 0 1
refdes=C456
T 45600 42000 5 10 0 1 90 0 1
symversion=0.1
T 46500 41800 5 10 0 1 0 0 1
footprint=1005m
T 46500 41800 5 10 1 1 0 0 1
value=0.1u
T 46500 41800 5 10 0 1 0 0 1
farnell-no=2309011RL
}
C 45400 41000 1 0 0 gnd-1.sym
C 45300 43200 1 0 0 3.3V-plus-1.sym
N 45500 41300 45500 41800 4
N 45500 42700 45500 43200 4
N 44700 42700 44700 42900 4
N 44700 42900 45500 42900 4
N 46300 42700 46300 42900 4
N 46300 42900 45500 42900 4
N 46300 41800 46300 41600 4
N 46300 41600 45500 41600 4
N 45500 41600 44700 41600 4
N 44700 41600 44700 41800 4
T 43900 40400 9 10 1 0 0 0 2
Decoupling capacitors for the ATmega1284P
Put close to pins 5/6, 17/18, 38/39
