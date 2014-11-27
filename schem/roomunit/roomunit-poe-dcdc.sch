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
C 41700 49900 1 0 0 in-1.sym
{
T 41700 50200 5 10 0 0 0 0 1
device=INPUT
T 41700 50200 5 10 1 1 0 0 1
refdes=POEVDD
}
C 41700 48000 1 0 0 in-1.sym
{
T 41700 48300 5 10 0 0 0 0 1
device=INPUT
T 41700 48300 5 10 1 1 0 0 1
refdes=Vc
}
C 41700 46700 1 0 0 in-1.sym
{
T 41700 47000 5 10 0 0 0 0 1
device=INPUT
T 41700 47000 5 10 1 1 0 0 1
refdes=Vb
}
C 41700 47300 1 0 0 in-1.sym
{
T 41700 47600 5 10 0 0 0 0 1
device=INPUT
T 41700 47600 5 10 1 1 0 0 1
refdes=GATE
}
C 41700 42700 1 0 0 in-1.sym
{
T 41700 43000 5 10 0 0 0 0 1
device=INPUT
T 41700 43000 5 10 1 1 0 0 1
refdes=POECOM
}
C 54100 49900 1 0 0 out-1.sym
{
T 54100 50200 5 10 0 0 0 0 1
device=OUTPUT
T 54100 50200 5 10 1 1 0 0 1
refdes=VOUTVDD
}
C 47200 46500 1 0 0 out-1.sym
{
T 47200 46800 5 10 0 0 0 0 1
device=OUTPUT
T 47200 46800 5 10 1 1 0 0 1
refdes=CS
}
C 54100 42700 1 0 0 out-1.sym
{
T 54100 43000 5 10 0 0 0 0 1
device=OUTPUT
T 54100 43000 5 10 1 1 0 0 1
refdes=VOUTGND
}
C 47200 44600 1 0 0 out-1.sym
{
T 47200 44900 5 10 0 0 0 0 1
device=OUTPUT
T 47200 44900 5 10 1 1 0 0 1
refdes=CTL
}
C 44800 45000 1 90 0 resistor-small-1.sym
{
T 44400 45250 5 10 0 0 90 0 1
device=MULTICOMP  MCSR04X1961FTL
T 44550 45150 5 10 1 1 90 0 1
refdes=R550
T 45000 45100 5 10 1 1 90 0 1
value=1.96k
T 44800 45000 5 10 0 0 0 0 1
comment=Rctl
T 44800 45000 5 10 0 1 0 0 1
footprint=1005m
T 44800 45000 5 10 0 1 0 0 1
farnell-no=2074018
}
C 45500 45000 1 90 0 capacitor-small-1.sym
{
T 45050 45150 5 10 0 0 90 0 1
device=MULTICOMP  MC0402F153Z160CT
T 45250 45150 5 10 1 1 90 0 1
refdes=C551
T 44850 45150 5 10 0 0 90 0 1
symversion=0.1
T 45700 45100 5 10 1 1 90 0 1
value=15n
T 45500 45000 5 10 0 0 0 0 1
comment=Cctl
T 45500 45000 5 10 0 1 0 0 1
footprint=1005m
T 45500 45000 5 10 0 1 0 0 1
farnell-no=1758888
}
C 50600 43900 1 0 0 capacitor-small-1.sym
{
T 50750 44350 5 10 0 0 0 0 1
device=MULTICOMP  MC0402B183K160CT
T 50750 44150 5 10 1 1 0 0 1
refdes=C554
T 50750 44550 5 10 0 0 0 0 1
symversion=0.1
T 50700 43700 5 10 1 1 0 0 1
value=18n
T 50600 43900 5 10 0 0 0 0 1
comment=Ciz
T 50600 43900 5 10 0 1 0 0 1
footprint=1005m
T 50600 43900 5 10 0 1 0 0 1
farnell-no=1758889
}
C 50600 46500 1 0 0 resistor-small-1.sym
{
T 50850 46900 5 10 0 0 0 0 1
device=RESISTOR
T 50750 46750 5 10 1 1 0 0 1
refdes=R552
T 50700 46300 5 10 1 1 0 0 1
value=402
T 50600 46500 5 10 0 0 0 0 1
comment=Rob
T 50600 46500 5 10 0 1 0 0 1
footprint=1005m
T 50600 46500 5 10 0 1 0 0 1
farnell-no=2073011RL
}
C 51900 43100 1 90 0 resistor-small-1.sym
{
T 51500 43350 5 10 0 0 90 0 1
device=RESISTOR
T 51650 43250 5 10 1 1 90 0 1
refdes=R554
T 52100 43100 5 10 1 1 90 0 1
value=95.3k
T 51900 43100 5 10 0 0 0 0 1
comment=Rfbl
T 51900 43100 5 10 0 1 0 0 1
footprint=1005m
T 51900 43100 5 10 0 1 0 0 1
farnell-no=2073326
}
C 51900 45400 1 90 0 resistor-small-1.sym
{
T 51500 45650 5 10 0 0 90 0 1
device=RESISTOR
T 51650 45550 5 10 1 1 90 0 1
refdes=R553
T 52100 45400 5 10 1 1 90 0 1
value=162k
T 51900 45400 5 10 0 0 0 0 1
comment=Rfbu
T 51900 45400 5 10 0 1 0 0 1
footprint=1005m
T 51900 45400 5 10 0 1 0 0 1
farnell-no=1802953RL
}
C 51300 49100 1 90 0 capacitor-small-1.sym
{
T 50600 48900 5 10 0 0 90 6 1
device=AVX  TCJB157M006R0045
T 51000 49600 5 10 1 1 90 6 1
refdes=C552
T 50400 48900 5 10 0 0 90 6 1
symversion=0.1
T 51400 48800 5 10 1 1 90 0 1
value=150u
T 51300 49100 5 10 0 0 0 0 1
farnell-no=2408427
T 51300 49100 5 10 0 0 0 0 1
farnell-no=2408427
T 51300 49100 5 10 0 0 0 0 1
device=AVX  TCJB157M006R0045
T 51300 49100 5 10 0 1 0 0 1
footprint=3528m
T 51300 49100 5 10 0 1 0 0 1
comment=Cout
}
C 44400 48300 1 180 0 diode-3.sym
{
T 44000 47700 5 10 0 0 180 0 1
device=NXP  BAS16,215
T 44000 48500 5 10 1 1 180 0 1
refdes=D550
T 43800 47700 5 10 1 1 0 0 1
value=BAS16
T 44400 48300 5 10 0 0 0 0 1
comment=Dvc1
T 44400 48300 5 10 0 1 0 0 1
footprint=SOT23
T 44400 48300 5 10 0 1 0 0 1
farnell-no=1081180
}
N 42300 50000 46600 50000 4
N 43000 49900 43000 50000 4
N 43000 49000 43000 42800 4
N 46600 48900 43000 48900 4
N 43500 48100 42300 48100 4
N 46600 48100 44400 48100 4
N 49600 50000 54100 50000 4
N 51200 49700 51200 50000 4
N 49500 42800 54100 42800 4
N 53000 42800 53000 48500 4
N 49600 48500 53000 48500 4
N 51200 48500 51200 49100 4
N 52500 50000 52500 46600 4
N 52500 46600 51200 46600 4
N 51800 46600 51800 46000 4
N 51800 45400 51800 43700 4
N 51200 44000 51800 44000 4
N 51800 42800 51800 43100 4
C 50000 42900 1 0 1 TLV431_SOT23-1.sym
{
T 49200 43500 5 10 1 1 0 6 1
refdes=U551
T 50000 44100 5 10 0 0 0 6 1
device=TLV431BE5TA
T 50000 44300 5 10 0 0 0 6 1
footprint=SOT23
T 49200 43200 5 10 1 1 0 6 1
value=TLV431
T 50000 42900 5 10 0 0 0 0 1
farnell-no=1904052
}
N 49500 43800 49500 45400 4
N 50000 43300 51400 43300 4
N 51400 43300 51400 44000 4
N 49500 42900 49500 42800 4
N 50600 46600 49500 46600 4
N 49500 46600 49500 46200 4
N 42300 42800 46000 42800 4
N 44700 42800 44700 43400 4
N 44700 43900 44700 45000 4
N 45400 45000 45400 44700 4
N 44700 44700 47200 44700 4
N 42300 46800 45400 46800 4
N 44700 45600 44700 46800 4
C 45500 47200 1 0 0 IRLML0100TRPbF-SOT-23.sym
{
T 46200 47500 5 10 1 1 0 0 1
device=IRLML0100TRPBF
T 46200 47800 5 10 1 1 0 0 1
refdes=Q550
T 45500 47200 5 10 0 0 0 0 1
farnell-no=1783928
T 45500 47200 5 10 0 0 0 0 1
footprint=SOT23
}
N 45500 49200 46600 49200 4
N 46000 49200 46000 48000 4
N 45500 47400 42300 47400 4
N 46000 46200 46000 47200 4
C 43900 49200 1 90 0 capacitor-small-1.sym
{
T 43200 49000 5 10 0 0 90 6 1
device=MURATA
T 43600 49700 5 10 1 1 90 6 1
refdes=C550
T 43000 49000 5 10 0 0 90 6 1
symversion=0.1
T 44000 49000 5 10 1 1 90 0 1
value=2.2u
T 43900 49200 5 10 0 0 0 0 1
comment=Cin
T 43900 49200 5 10 0 1 0 0 1
footprint=3216m
T 43900 49200 5 10 0 1 0 0 1
farnell-no=2426966
}
C 48700 49800 1 0 0 diode-2.sym
{
T 49000 50500 5 10 1 1 0 0 1
device=MULTICOMP SS54
T 49000 50300 5 10 1 1 0 0 1
refdes=D551
T 48700 49800 5 10 0 0 0 0 1
farnell-no=1861427
T 48700 49800 5 10 0 0 0 0 1
footprint=DO214AB
T 48700 49800 5 10 0 1 0 0 1
comment=DS
}
N 49600 48500 49600 49200 4
N 48100 50000 48700 50000 4
N 49600 49200 48100 49200 4
N 46000 46600 47200 46600 4
C 46100 45600 1 90 0 resistor-small-1.sym
{
T 45700 45850 5 10 0 0 90 0 1
device=YAGEO (PHYCOMP) RC02H 1206 1R8
T 45850 45750 5 10 1 1 90 0 1
refdes=R551
T 46300 45700 5 10 1 1 90 0 1
value=1.8
T 46100 45600 5 10 0 0 0 0 1
farnell-no=9236554RL
T 46100 45600 5 10 0 0 0 0 1
comment=Rcs
T 46100 45600 5 10 0 0 0 0 1
footprint=3216m
}
N 46000 45600 46000 42800 4
C 49300 45300 1 0 0 optocoupler_FOD817DS_LED.sym
{
T 49400 47000 5 8 0 0 0 0 1
symversion=1.0
T 49950 46000 5 10 1 1 0 0 1
refdes=U550
T 49950 45800 5 10 0 1 0 0 1
value=FOD817A
T 49950 45600 5 8 0 1 0 0 1
footprint=FOD81x
T 49300 45300 5 10 0 0 0 0 1
farnell-no=2322515
T 50000 45800 5 10 1 1 0 0 1
device=FOD817A
}
C 44300 43300 1 0 0 optocoupler_FOD817DS_PT.sym
{
T 44400 44700 5 8 0 0 0 0 1
symversion=1.0
T 44750 43700 5 10 1 1 0 0 1
refdes=U550
T 44750 43500 5 10 1 1 0 0 1
device=FOD817A
T 44300 43300 5 10 0 1 0 0 1
footprint=FOD81x
T 44300 43300 5 10 0 1 0 0 1
value=FOD817A
T 44300 43300 5 10 0 0 0 0 1
farnell-no=2322515
}
T 46400 46000 9 10 1 0 0 0 1
R551 to be placed close to CS pin
C 53500 47100 1 0 0 led.sym
{
T 54100 49200 5 8 0 0 0 0 1
device=LGQ971
T 54200 47700 5 10 1 1 0 0 1
refdes=D552
T 54200 47500 5 10 1 1 0 0 1
value=Green
T 53500 47100 5 10 0 0 0 0 1
footprint=1608m
T 53500 47100 5 10 0 0 0 0 1
description=Osram LGQ971, If=20 mA, Vf=2.2 V
T 53500 47100 5 10 0 0 0 0 1
farnell-no=1226372
T 53500 47100 5 10 0 0 0 0 1
digikey-no=475-1409-1-ND
}
C 54000 48300 1 90 0 resistor-small-1.sym
{
T 53600 48550 5 10 0 0 90 0 1
device=RESISTOR
T 53750 48450 5 10 1 1 90 0 1
refdes=R555
T 54200 48300 5 10 1 1 90 0 1
value=56.2
T 54000 48300 5 10 0 1 0 0 1
farnell-no=2073144RL
T 54000 48300 5 10 0 1 0 0 1
footprint=1005m
}
N 53900 48900 53900 50000 4
N 53900 48300 53900 47800 4
N 53900 47300 53900 42800 4
C 44700 47900 1 270 1 diode-2.sym
{
T 45300 48300 5 10 0 0 90 2 1
device=DIODE
T 44500 48200 5 10 1 1 90 2 1
refdes=D553
T 45300 48200 5 10 1 1 90 0 1
value=MURA120
T 44700 47900 5 10 0 0 0 0 1
comment=Dsn
T 44700 47900 5 10 0 1 0 0 1
farnell-no=1459147
T 44700 47900 5 10 0 0 0 0 1
footprint=DO214AC
}
N 44900 49900 44900 50000 4
N 44900 49100 44900 48800 4
N 44900 47800 45500 47800 4
N 45500 47800 45500 49200 4
N 44900 47900 44900 47800 4
C 49800 43900 1 0 0 resistor-small-1.sym
{
T 49750 44300 5 10 0 0 0 0 1
device=RESISTOR
T 49950 44150 5 10 1 1 0 0 1
refdes=R557
T 49900 43700 5 10 1 1 0 0 1
value=6.81k
T 49800 43900 5 10 0 0 0 0 1
comment=Riz
T 49800 43900 5 10 0 1 0 0 1
footprint=1005m
T 49800 43900 5 10 0 1 0 0 1
farnell-no=2073207RL
}
N 50600 44000 50400 44000 4
N 49800 44000 49500 44000 4
C 45500 46000 1 90 0 resistor-small-1.sym
{
T 45100 45950 5 10 0 0 90 0 1
device=RESISTOR
T 45250 46150 5 10 1 1 90 0 1
refdes=R556
T 45500 46000 5 10 0 0 0 0 1
comment=Rzctl
T 45700 46000 5 10 1 1 90 0 1
value=1.78k
T 45500 46000 5 10 0 1 0 0 1
footprint=1005m
T 45500 46000 5 10 0 1 0 0 1
farnell-no=2072702RL
}
N 45400 46800 45400 46600 4
N 45400 46000 45400 45600 4
C 50400 44700 1 0 0 capacitor-small-1.sym
{
T 50550 45150 5 10 0 0 0 0 1
device=MULTICOMP  MC0402B821K500CT
T 50550 44950 5 10 1 1 0 0 1
refdes=C553
T 50550 45350 5 10 0 0 0 0 1
symversion=0.1
T 50400 44700 5 10 0 0 0 0 1
comment=Cip
T 50500 44500 5 10 1 1 0 0 1
value=820p
T 50400 44700 5 10 0 1 0 0 1
footprint=1005m
T 50400 44700 5 10 0 1 0 0 1
farnell-no=1758990
}
N 51000 44800 51800 44800 4
N 50400 44800 49500 44800 4
C 45400 49200 1 90 0 capacitor-small-1.sym
{
T 44950 49350 5 10 0 0 90 0 1
device=MULTICOMP
T 45150 49350 5 10 1 1 90 0 1
refdes=C555
T 44750 49350 5 10 0 0 90 0 1
symversion=0.1
T 45400 49200 5 10 0 0 0 0 1
comment=Csn
T 45600 49300 5 10 1 1 90 0 1
value=15n
T 45400 49200 5 10 0 1 0 0 1
footprint=2012m
T 45400 49200 5 10 0 1 0 0 1
farnell-no=1856508
}
C 44600 49200 1 90 0 resistor-small-1.sym
{
T 44200 49150 5 10 0 0 90 0 1
device=VISHAY
T 44350 49350 5 10 1 1 90 0 1
refdes=R558
T 44600 49200 5 10 0 0 0 0 1
comment=Rsn
T 44800 49300 5 10 1 1 90 0 1
value=1210
T 44600 49200 5 10 0 1 0 0 1
footprint=3216m
T 44600 49200 5 10 0 1 0 0 1
farnell-no=2139573
}
N 44500 49200 44500 49100 4
N 44500 49100 45300 49100 4
N 45300 49100 45300 49200 4
N 44500 49800 44500 49900 4
N 44500 49900 45300 49900 4
N 45300 49900 45300 49800 4
C 46600 48000 1 0 0 transformer-epcos-flyback-1.sym
{
T 47500 50200 5 10 1 1 0 0 1
refdes=T550
T 47500 50400 5 10 0 0 0 0 1
device=poetransformer
T 46700 50400 5 10 1 1 0 0 1
value=Epcos EFD 15 B
T 46600 48000 5 10 0 0 0 0 1
farnell-no=2114074
T 46600 48000 5 10 0 0 0 0 1
comment=Turns ratio prim:sec3.3V:aux12V:sec5V 10:1:3.33:1.33
T 46600 48000 5 10 0 1 0 0 1
footprint=EFD15
}
C 48900 48200 1 90 0 resistor-small-1.sym
{
T 48500 48450 5 10 0 0 90 0 1
device=RESISTOR
T 48650 48350 5 10 1 1 90 0 1
refdes=R559
T 49100 48200 5 10 1 1 90 0 1
value=160k
T 48900 48200 5 10 0 0 0 0 1
comment=Rfbu
T 48900 48200 5 10 0 1 0 0 1
footprint=1005m
T 48900 48200 5 10 0 1 0 0 1
farnell-no=2072680
}
N 48100 48900 48800 48900 4
N 48800 48900 48800 48800 4
N 48800 48200 48800 48100 4
N 48800 48100 48100 48100 4
C 50500 49800 1 90 1 capacitor-3.sym
{
T 50050 49950 5 10 0 0 90 0 1
device=CAPACITOR
T 50050 49150 5 10 1 1 90 0 1
refdes=C557
T 49850 49950 5 10 0 0 90 0 1
symversion=0.1
T 50600 48800 5 10 1 1 90 0 1
value=150u
T 50500 49800 5 10 0 0 0 0 1
farnell-no=1870604
T 50500 49800 5 10 0 0 0 0 1
footprint=elyt_smd_E_6_3mm
}
C 43200 49900 1 90 1 capacitor-3.sym
{
T 42750 50050 5 10 0 0 90 0 1
device=CAPACITOR
T 42750 49250 5 10 1 1 90 0 1
refdes=C556
T 42550 50050 5 10 0 0 90 0 1
symversion=0.1
T 43300 49000 5 10 1 1 90 0 1
value=2.2u
T 43200 49900 5 10 0 0 0 0 1
farnell-no=1870641
T 43200 49900 5 10 0 0 0 0 1
footprint=elyt_smd_B_4mm
}
N 43800 50000 43800 49800 4
N 43800 49200 43800 48900 4
N 50300 50000 50300 49800 4
N 50300 48900 50300 48500 4
