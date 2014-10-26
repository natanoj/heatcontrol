v 20130925 2
C 40000 40000 0 0 0 title-bordered-A3-license.sym
{
T 49500 40600 15 10 1 1 0 0 1
license=CC-BY-SA 4.0
T 53300 40600 15 10 1 1 0 0 1
revision=1.0
T 53300 40300 15 10 1 1 0 0 1
svnauthor=Jonatan Åkerlind 2013
}
C 41600 40700 1 0 0 ethernet.sym
{
T 44300 43500 5 10 0 0 0 0 1
device=none
T 43100 42400 5 10 1 1 0 3 1
refdes=S3
T 41800 40700 5 10 1 1 0 0 1
source=roomunit-ethernet.sch
}
C 49900 41500 1 0 0 poe_psu.sym
{
T 53000 44300 5 10 0 0 0 0 1
device=none
T 51600 43200 5 10 1 1 0 3 1
refdes=S5
T 50200 41500 5 10 1 1 0 0 1
source=roomunit-psu.sch
}
C 41300 48200 1 0 0 sensors.sym
{
T 43900 49800 5 10 0 0 0 0 1
device=none
T 42000 48800 5 10 1 1 0 3 1
refdes=S1
T 41600 48200 5 10 1 1 0 0 1
source=roomunit-sensors.sch
}
N 45600 46400 48000 46400 4
N 48000 46400 48000 48600 4
N 48000 48600 49500 48600 4
{
T 48600 48600 5 10 1 1 0 0 1
netname=UIINT
}
C 43100 50900 1 0 0 3.3V-plus-1.sym
C 43900 47600 1 0 0 3.3V-plus-1.sym
C 51100 50700 1 0 0 3.3V-plus-1.sym
C 43500 43800 1 0 0 3.3V-plus-1.sym
C 43400 47800 1 0 0 gnd-1.sym
C 44200 44900 1 0 0 gnd-1.sym
C 51300 45400 1 0 0 gnd-1.sym
C 43600 40300 1 0 0 gnd-1.sym
N 44100 47600 44100 47500 4
N 44300 45300 44300 45200 4
N 43300 50900 43300 50800 4
N 43500 48200 43500 48100 4
N 43700 43800 43700 43700 4
N 43700 40700 43700 40600 4
N 51400 45800 51400 45700 4
N 51300 50700 51300 50600 4
N 55400 50200 55900 50200 4
{
T 55400 50200 5 10 1 1 0 0 1
netname=SPISCK
}
N 53500 49800 54500 49800 4
{
T 53500 49800 5 10 1 1 0 0 1
netname=SPITOSLAVES
}
C 53400 43900 1 0 0 3.3V-plus-1.sym
C 53500 43000 1 0 0 gnd-1.sym
N 53300 43800 53600 43800 4
N 53600 43800 53600 43900 4
N 53300 43400 53600 43400 4
N 53600 43400 53600 43300 4
N 45800 50100 48400 50100 4
{
T 45900 50100 5 10 1 1 0 0 1
netname=VTEMPERATURE
}
N 48400 50100 48400 49600 4
N 48400 49600 49500 49600 4
N 45800 49700 48200 49700 4
{
T 45900 49700 5 10 1 1 0 0 1
netname=VHUMIDITY
}
N 48200 49700 48200 49400 4
N 48200 49400 49500 49400 4
N 49500 49000 48400 49000 4
{
T 48300 49000 5 10 1 1 0 0 1
netname=SPITOMASTER
}
N 42200 47300 40900 47300 4
{
T 40900 47300 5 10 1 1 0 0 1
netname=IICSDA
}
N 41500 45900 40900 45900 4
{
T 40800 45900 5 10 1 1 0 0 1
netname=IICSCL
}
N 43200 46000 42700 46000 4
{
T 42600 46000 5 10 1 1 0 0 1
netname=RESET
}
C 55900 50100 1 0 0 netendright.sym
{
T 56900 50600 5 10 0 0 0 0 1
device=none
}
C 54500 49700 1 0 0 netendright.sym
{
T 55500 50200 5 10 0 0 0 0 1
device=none
}
C 48000 48900 1 0 0 netendleft.sym
{
T 48800 49400 5 10 0 0 0 0 1
device=none
}
C 40500 47200 1 0 0 netendleft.sym
{
T 40800 47700 5 10 0 0 0 0 1
device=none
}
C 40500 45800 1 0 0 netendleft.sym
{
T 40800 46300 5 10 0 0 0 0 1
device=none
}
N 45800 49300 47000 49300 4
{
T 45900 49300 5 10 1 1 0 0 1
netname=PIRSIGNAL
}
C 47000 49200 1 0 0 netendright.sym
{
T 47500 49700 5 10 0 0 0 0 1
device=none
}
N 44600 41400 47700 41400 4
{
T 44700 41200 5 10 1 1 0 0 1
netname=POENEG
}
N 47700 41400 47700 43400 4
N 47700 43400 49900 43400 4
N 49900 43800 47300 43800 4
N 47300 43800 47300 41800 4
N 47300 41800 44600 41800 4
{
T 44700 41600 5 10 1 1 0 0 1
netname=POEPOS
}
N 49500 48400 48200 48400 4
N 48200 48400 48200 45200 4
N 46500 45200 48200 45200 4
{
T 46700 45200 5 10 1 1 0 0 1
netname=ETHINT
}
N 49500 48200 48400 48200 4
N 48400 48200 48400 44900 4
N 46900 44900 48400 44900 4
{
T 47100 44900 5 10 1 1 0 0 1
netname=ETHPME
}
N 49500 48000 48600 48000 4
N 48600 48000 48600 44600 4
N 48600 44600 47500 44600 4
{
T 47600 44600 5 10 1 1 0 0 1
netname=PIRSIGNAL
}
N 44600 43000 46000 43000 4
{
T 44700 43000 5 10 1 1 0 0 1
netname=SPITOMASTER
}
N 44600 42600 46500 42600 4
N 44600 42200 46900 42200 4
N 46500 45200 46500 42600 4
N 46900 42200 46900 44900 4
C 47100 44500 1 0 0 netendleft.sym
{
T 47300 45000 5 10 0 0 0 0 1
device=none
}
C 46000 42900 1 0 0 netendright.sym
{
T 46500 43400 5 10 0 0 0 0 1
device=none
}
N 41600 42600 40600 42600 4
{
T 40600 42600 5 10 1 1 0 0 1
netname=SPISCK
}
N 41600 42200 40600 42200 4
{
T 40600 42200 5 10 1 1 0 0 1
netname=SPITOSLAVES
}
N 41600 41800 40600 41800 4
{
T 40600 41800 5 10 1 1 0 0 1
netname=ETHRST
}
N 41600 43000 40600 43000 4
{
T 40600 43000 5 10 1 1 0 0 1
netname=ETHCS
}
C 40200 42500 1 0 0 netendleft.sym
{
T 40400 43000 5 10 0 0 0 0 1
device=none
}
C 40200 42100 1 0 0 netendleft.sym
{
T 40400 42600 5 10 0 0 0 0 1
device=none
}
N 53500 49400 54500 49400 4
{
T 53500 49400 5 10 1 1 0 0 1
netname=ETHCS
}
N 53500 49200 54500 49200 4
{
T 53500 49200 5 10 1 1 0 0 1
netname=ETHRST
}
N 49500 47200 49100 47200 4
{
T 49000 47200 5 10 1 1 0 0 1
netname=DCAPB
}
N 53300 42600 54800 42600 4
{
T 53500 42600 5 10 1 1 0 0 1
netname=DCAPB
}
C 48700 47100 1 0 0 netendleft.sym
{
T 48900 47600 5 10 0 0 0 0 1
device=none
}
C 54800 42500 1 0 0 netendright.sym
{
T 55300 43000 5 10 0 0 0 0 1
device=none
}
C 42300 45900 1 0 0 netendleft.sym
{
T 42500 46400 5 10 0 0 0 0 1
device=none
}
C 40200 41700 1 0 0 netendleft.sym
{
T 40400 42200 5 10 0 0 0 0 1
device=none
}
C 40200 42900 1 0 0 netendleft.sym
{
T 40400 43400 5 10 0 0 0 0 1
device=none
}
C 54500 49300 1 0 0 netendright.sym
{
T 55000 49800 5 10 0 0 0 0 1
device=none
}
C 54500 49100 1 0 0 netendright.sym
{
T 55000 49600 5 10 0 0 0 0 1
device=none
}
C 48300 42100 1 0 0 pwrjack-1.sym
{
T 48400 42600 5 10 0 0 0 0 1
device=PWRJACK
T 48300 42600 5 10 1 1 0 0 1
refdes=CONN1
}
N 49200 42200 49900 42200 4
N 49200 42400 49500 42400 4
N 49500 42400 49500 42600 4
N 49500 42600 49900 42600 4
B 48100 41300 1600 1500 3 0 0 2 100 100 0 -1 -1 -1 -1 -1
T 48200 41400 9 10 1 0 0 0 2
Optional DC
adapter connector
N 45800 48900 47000 48900 4
{
T 45900 48900 5 10 1 1 0 0 1
netname=PIRTXD
}
N 49500 47600 49100 47600 4
{
T 49000 47600 5 10 1 1 0 0 1
netname=PIRTXD
}
N 41300 50100 40700 50100 4
{
T 40700 50100 5 10 1 1 0 0 1
netname=PIRRXD
}
N 53500 48800 54500 48800 4
{
T 53500 48800 5 10 1 1 0 0 1
netname=PIRRXD
}
C 54500 48700 1 0 0 netendright.sym
{
T 55000 49200 5 10 0 0 0 0 1
device=none
}
C 47000 48800 1 0 0 netendright.sym
{
T 47500 49300 5 10 0 0 0 0 1
device=none
}
C 48700 47500 1 0 0 netendleft.sym
{
T 48900 48000 5 10 0 0 0 0 1
device=none
}
C 40300 50000 1 0 0 netendleft.sym
{
T 40500 50500 5 10 0 0 0 0 1
device=none
}
C 56100 44900 1 0 1 CON_Atmel_AVRISP_6PIN-1.sym
{
T 55200 46900 5 10 1 1 0 0 1
refdes=CONN2
T 56100 48500 5 10 0 0 0 6 1
device=Atmel AVRISP Connector
T 56100 47100 5 10 0 0 0 6 1
footprint=CON_HDR-254P-3C-2R-6N__Molex_8624-Series
T 56100 44900 5 10 0 0 0 0 1
farnell-no=2293757
}
N 54900 46600 53900 46600 4
{
T 53600 46600 5 10 1 1 0 0 1
netname=SPITOMASTER
}
N 54900 45700 53900 45700 4
{
T 53700 45700 5 10 1 1 0 0 1
netname=SPITOSLAVES
}
N 54900 46000 53900 46000 4
{
T 53700 46000 5 10 1 1 0 0 1
netname=ISPSCK
}
N 54900 45400 53900 45400 4
{
T 53700 45400 5 10 1 1 0 0 1
netname=RESET
}
N 53400 46300 54900 46300 4
N 53400 46300 53400 46900 4
N 54900 45100 54700 45100 4
N 54700 45100 54700 44800 4
C 53200 46900 1 0 0 3.3V-plus-1.sym
C 54600 44500 1 0 0 gnd-1.sym
C 53500 46500 1 0 0 netendleft.sym
{
T 53700 47000 5 10 0 0 0 0 1
device=none
}
C 53500 45900 1 0 0 netendleft.sym
{
T 53700 46400 5 10 0 0 0 0 1
device=none
}
C 53500 45600 1 0 0 netendleft.sym
{
T 53700 46100 5 10 0 0 0 0 1
device=none
}
C 53500 45300 1 0 0 netendleft.sym
{
T 53700 45800 5 10 0 0 0 0 1
device=none
}
N 49500 50000 48900 50000 4
{
T 48800 50000 5 10 1 1 0 0 1
netname=RESET
}
C 48500 49900 1 0 0 netendleft.sym
{
T 48700 50400 5 10 0 0 0 0 1
device=none
}
N 53500 48000 54500 48000 4
{
T 53500 48000 5 10 1 1 0 0 1
netname=IICSCL
}
N 53500 47800 54500 47800 4
{
T 53500 47800 5 10 1 1 0 0 1
netname=IICSDA
}
C 54500 47900 1 0 0 netendright.sym
{
T 55000 48400 5 10 0 0 0 0 1
device=none
}
C 54500 47700 1 0 0 netendright.sym
{
T 55000 48200 5 10 0 0 0 0 1
device=none
}
C 43200 45300 1 0 0 ui.sym
{
T 45300 47300 5 10 0 0 0 0 1
device=none
T 44400 46500 5 10 1 1 0 3 1
refdes=S2
T 42900 45300 5 10 1 1 0 0 1
source=roomunit-ui.sch
}
C 49500 45800 1 0 0 roomunit-cpu.sym
{
T 53200 50400 5 10 0 0 0 0 1
device=none
T 51500 49900 5 10 1 1 0 3 1
refdes=S4
T 49800 45800 5 10 1 1 0 0 1
source=roomunit-cpu.sch
}
N 42600 47100 43000 47100 4
N 43000 47100 43000 46800 4
N 43000 46800 43200 46800 4
N 43200 46400 42100 46400 4
C 40500 46800 1 0 0 netendleft.sym
{
T 40800 47300 5 10 0 0 0 0 1
device=none
}
C 40500 45400 1 0 0 netendleft.sym
{
T 40800 45900 5 10 0 0 0 0 1
device=none
}
N 40900 46900 42200 46900 4
{
T 40900 46900 5 10 1 1 0 0 1
netname=SPITOSLAVES
}
C 46900 46700 1 0 0 netendright.sym
{
T 47400 47200 5 10 0 0 0 0 1
device=none
}
N 46900 46800 45600 46800 4
{
T 45600 46800 5 10 1 1 0 0 1
netname=SPITOMASTER
}
N 41900 45700 42100 45700 4
N 42100 45700 42100 46400 4
N 41500 45500 40900 45500 4
{
T 40800 45500 5 10 1 1 0 0 1
netname=ISPSCK
}
C 41900 45400 1 0 1 jumper_3pin.sym
{
T 41800 46300 5 10 1 1 0 6 1
refdes=J2
T 41800 46100 5 10 1 1 0 6 1
value=JMP
T 41800 45200 5 8 0 1 0 6 1
footprint=JMP_3PIN
T 41700 47400 5 8 0 0 0 6 1
symversion=1.0
}
C 42600 46800 1 0 1 jumper_3pin.sym
{
T 42500 47700 5 10 1 1 0 6 1
refdes=J1
T 42500 47500 5 10 1 1 0 6 1
value=JMP
T 42500 46600 5 8 0 1 0 6 1
footprint=JMP_3PIN
T 42400 48800 5 8 0 0 0 6 1
symversion=1.0
T 42600 46800 5 10 0 0 0 0 1
farnell-no=1593423
T 42600 46800 5 10 0 0 0 0 1
comment=farnell-no is 20-way, can be cut. Jumper i.e.: 2396303
}
C 55000 49700 1 0 0 jumper_3pin.sym
{
T 55100 50600 5 10 1 1 0 0 1
refdes=J3
T 55100 50400 5 10 1 1 0 0 1
value=JMP
T 55100 49500 5 8 0 1 0 0 1
footprint=JMP_3PIN
T 55200 51700 5 8 0 0 0 0 1
symversion=1.0
}
N 53500 50000 55000 50000 4
N 55400 49800 55900 49800 4
{
T 55400 49800 5 10 1 1 0 0 1
netname=ISPSCK
}
C 55900 49700 1 0 0 netendright.sym
{
T 56900 50200 5 10 0 0 0 0 1
device=none
}
C 48900 46700 1 0 0 nc-left-1.sym
{
T 48900 47100 5 10 0 0 0 0 1
value=NoConnection
T 48900 47500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 48800 46500 1 0 0 nc-left-1.sym
{
T 48800 46900 5 10 0 0 0 0 1
value=NoConnection
T 48800 47300 5 10 0 0 0 0 1
device=DRC_Directive
}
C 48900 46300 1 0 0 nc-left-1.sym
{
T 48900 46700 5 10 0 0 0 0 1
value=NoConnection
T 48900 47100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 54100 48500 1 180 0 nc-left-1.sym
{
T 54100 48100 5 10 0 0 180 0 1
value=NoConnection
T 54100 47700 5 10 0 0 180 0 1
device=DRC_Directive
}
N 49400 46800 49500 46800 4
N 49500 46600 49300 46600 4
N 49400 46400 49500 46400 4
N 53600 48400 53500 48400 4
