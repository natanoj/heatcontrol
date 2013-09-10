v 20110115 2
C 40000 40000 0 0 0 title-bordered-A3-svn.sym
{
T 49400 40600 15 10 1 1 0 0 1
svnurl=$URL$
T 53300 40600 15 10 1 1 0 0 1
svnrevision=$Rev$
T 53300 40300 15 10 1 1 0 0 1
svnauthor=$Author$
}
C 44000 45000 1 0 0 ti_tps23757.sym
{
T 46000 48000 5 10 1 1 0 3 1
refdes=U500
T 46000 47600 5 10 1 1 0 3 1
device=TPS23757
T 46000 47200 5 10 1 1 0 3 1
descriptio=TI TPS23757 PoE PD
T 46000 46800 5 10 1 1 0 3 1
footprint=TSSOP20
}
C 40500 50200 1 0 0 in-1.sym
{
T 40500 50500 5 10 0 0 0 0 1
device=INPUT
T 40500 50500 5 10 1 1 0 0 1
refdes=POE+
}
C 40500 46900 1 0 0 in-1.sym
{
T 40500 47200 5 10 0 0 0 0 1
device=INPUT
T 40500 47200 5 10 1 1 0 0 1
refdes=POE-
}
C 40500 44100 1 0 0 in-1.sym
{
T 40500 44400 5 10 0 0 0 0 1
device=INPUT
T 40500 44400 5 10 1 1 0 0 1
refdes=DC+
}
C 40500 43000 1 0 0 in-1.sym
{
T 40500 43300 5 10 0 0 0 0 1
device=INPUT
T 40500 43300 5 10 1 1 0 0 1
refdes=DC-
}
C 55400 47700 1 0 0 out-1.sym
{
T 55400 48000 5 10 0 0 0 0 1
device=OUTPUT
T 55400 48000 5 10 1 1 0 0 1
refdes=VOUT3.3
}
C 55400 45300 1 0 0 out-1.sym
{
T 55400 45600 5 10 0 0 0 0 1
device=OUTPUT
T 55400 45600 5 10 1 1 0 0 1
refdes=VOUTGND
}
C 55400 46400 1 0 0 out-1.sym
{
T 55400 46700 5 10 0 0 0 0 1
device=OUTPUT
T 55400 46700 5 10 1 1 0 0 1
refdes=VAPB
}
N 44000 47000 41100 47000 4
N 41100 50300 52500 50300 4
N 45800 50300 45800 49800 4
N 46200 49800 46200 50300 4
C 43700 47100 1 90 0 resistor-small-1.sym
{
T 43300 47350 5 10 0 0 90 0 1
device=RESISTOR
T 43450 47250 5 10 1 1 90 0 1
refdes=R501
T 43900 47200 5 10 1 1 90 0 1
value=243
}
N 43600 47700 43600 47800 4
N 43600 47800 44000 47800 4
N 43600 47100 43600 47000 4
C 43700 48800 1 90 0 resistor-small-1.sym
{
T 43300 49050 5 10 0 0 90 0 1
device=RESISTOR
T 43450 48950 5 10 1 1 90 0 1
refdes=R500
T 43900 48900 5 10 1 1 90 0 1
value=24.9k
}
N 44000 48600 43600 48600 4
N 43600 48600 43600 48800 4
N 43600 49400 43600 50300 4
C 42100 48300 1 90 0 capacitor-small-1.sym
{
T 41650 48450 5 10 0 0 90 0 1
device=CAPACITOR
T 41850 48450 5 10 1 1 90 0 1
refdes=C500
T 41450 48450 5 10 0 0 90 0 1
symversion=0.1
T 42300 48300 5 10 1 1 90 0 1
value=0.1uF
}
N 42000 48900 42000 50300 4
N 42000 48300 42000 47000 4
C 42800 48700 1 90 0 zener-2.sym
{
T 42300 49100 5 10 0 0 90 0 1
device=ZENER_DIODE
T 42500 49000 5 10 1 1 90 0 1
refdes=Z500
T 43000 48900 5 10 1 1 90 0 1
value=58V TVS
}
N 42700 49500 42700 50300 4
N 42700 48700 42700 47000 4
N 44000 48200 42700 48200 4
N 45200 45000 45200 43100 4
N 41100 43100 52500 43100 4
N 46000 43100 46000 45000 4
N 45600 45000 45600 43100 4
C 43600 44900 1 90 0 resistor-small-1.sym
{
T 43200 45150 5 10 0 0 90 0 1
device=RESISTOR
T 43350 45050 5 10 1 1 90 0 1
refdes=R502
T 43800 45000 5 10 1 1 90 0 1
value=57.6k
}
N 44000 45800 43500 45800 4
N 43500 45800 43500 45500 4
N 43500 44900 43500 43100 4
C 46900 44200 1 90 0 resistor-small-1.sym
{
T 46500 44450 5 10 0 0 90 0 1
device=RESISTOR
T 46650 44350 5 10 1 1 90 0 1
refdes=R504
T 47100 44100 5 10 1 1 90 0 1
value=RBLNK
}
N 46800 43100 46800 44200 4
N 46400 43400 46400 45000 4
N 46800 44800 46800 45000 4
C 48400 45300 1 90 1 capacitor-3.sym
{
T 47700 45100 5 10 0 0 270 2 1
device=POLARIZED_CAPACITOR
T 47800 44700 5 10 1 1 90 2 1
refdes=C501
T 47500 45100 5 10 0 0 270 2 1
symversion=0.1
T 48500 45000 5 10 1 1 90 0 1
value=0.1uF
}
C 49300 45300 1 90 1 capacitor-3.sym
{
T 48600 45100 5 10 0 0 270 2 1
device=POLARIZED_CAPACITOR
T 48700 44700 5 10 1 1 90 2 1
refdes=C502
T 48400 45100 5 10 0 0 270 2 1
symversion=0.1
T 49400 45000 5 10 1 1 90 0 1
value=Cvc > 0.47uF
}
N 48200 43100 48200 44400 4
N 48200 45300 48200 47000 4
N 47900 47000 50700 47000 4
N 49100 43100 49100 44400 4
N 49100 45300 49100 47800 4
N 47900 47800 50700 47800 4
N 44000 46200 43000 46200 4
N 43000 46200 43000 42700 4
N 43000 42700 50500 42700 4
T 41500 46600 9 10 1 0 0 0 2
POE- should be a
local reference plane
N 47900 46600 50700 46600 4
N 47900 46200 50700 46200 4
N 54300 47800 55400 47800 4
N 54300 45400 55400 45400 4
N 52500 44700 52500 43100 4
N 52500 50300 52500 48500 4
N 50700 45400 50500 45400 4
N 50500 45400 50500 42700 4
C 50700 44700 1 0 0 poe-dcdc.sym
{
T 55100 48300 5 10 0 0 0 0 1
device=none
T 52300 46300 5 10 1 1 0 3 1
refdes=S500
T 52600 44700 5 10 1 1 0 0 1
source=roomunit-poe-dcdc.sch
}
C 41500 44100 1 0 0 resistor-small-1.sym
{
T 41750 44500 5 10 0 0 0 0 1
device=RESISTOR
T 41650 44350 5 10 1 1 0 0 1
refdes=R505
T 41600 43900 5 10 1 1 0 0 1
value=158k
}
C 42400 43300 1 90 0 resistor-small-1.sym
{
T 42000 43550 5 10 0 0 90 0 1
device=RESISTOR
T 42150 43450 5 10 1 1 90 0 1
refdes=R506
T 42600 43500 5 10 1 1 90 0 1
value=6.8k
}
N 42100 44200 42300 44200 4
N 42300 43900 42300 46600 4
N 42300 43300 42300 43100 4
N 41100 44200 41500 44200 4
N 41300 50300 41300 45600 4
C 41500 44700 1 90 0 diode-1.sym
{
T 40900 45100 5 10 0 0 90 0 1
device=DIODE
T 41000 45000 5 10 1 1 90 0 1
refdes=D500
}
N 41300 44700 41300 44200 4
N 44000 46600 42300 46600 4
B 40300 42000 2400 3900 3 0 0 2 100 100 0 -1 -1 -1 -1 -1
T 40600 42300 9 10 1 0 0 0 2
Optional DC
adapter interface
C 50200 45300 1 90 1 capacitor-3.sym
{
T 49500 45100 5 10 0 0 90 6 1
device=POLARIZED_CAPACITOR
T 49700 45100 5 10 1 1 90 6 1
refdes=C503
T 49300 45100 5 10 0 0 90 6 1
symversion=0.1
T 50300 45000 5 10 1 1 90 0 1
value="large for power-up ~10 uF"
}
N 50000 45300 50000 47800 4
N 50000 44400 50000 43100 4
N 48200 45600 47700 45600 4
N 47700 45600 47700 43400 4
N 47700 43400 46400 43400 4
N 46800 44900 47200 44900 4
N 47200 44900 47200 44000 4
N 47200 44000 46800 44000 4
T 46200 42000 9 10 1 0 0 0 2
PCB short with option to remove
and use resistor instead (RBLNK)
C 48300 48600 1 0 0 optocoupler_FOD817DS_LED.sym
{
T 48400 50300 5 8 0 0 0 0 1
symversion=1.0
T 48950 49300 5 10 1 1 0 0 1
refdes=U501
T 48950 49100 5 10 1 1 0 0 1
value=FOD817DS
T 48950 48900 5 8 1 1 0 0 1
footprint=FOD81x
}
C 54100 45700 1 0 0 optocoupler_FOD817DS_PT.sym
{
T 54200 47100 5 8 0 0 0 0 1
symversion=1.0
T 54550 46100 5 10 1 1 0 0 1
refdes=U501
T 54550 45900 5 10 1 1 0 0 1
device=FOD817DS
}
C 54600 46700 1 90 0 resistor-small-1.sym
{
T 54200 46950 5 10 0 0 90 0 1
device=RESISTOR
T 54350 46850 5 10 1 1 90 0 1
refdes=R507
T 54800 46700 5 10 1 1 90 0 1
value=Rapb_out
}
C 50400 48500 1 90 0 resistor-small-1.sym
{
T 50000 48750 5 10 0 0 90 0 1
device=RESISTOR
T 50150 48650 5 10 1 1 90 0 1
refdes=R503
T 50600 48500 5 10 1 1 90 0 1
value=Rapb
}
N 48500 48600 47900 48600 4
N 48500 48700 48500 48600 4
N 48500 49500 48500 49800 4
N 48500 49800 50300 49800 4
N 50300 49800 50300 49100 4
N 50300 48500 50300 47800 4
N 54500 47300 54500 47800 4
N 54500 46700 54500 46300 4
N 54500 45800 54500 45400 4
N 55400 46500 54500 46500 4
N 47900 45800 48400 45800 4
C 48900 45900 1 180 0 nc-left-1.sym
{
T 48900 45500 5 10 0 0 180 0 1
value=NoConnection
T 48900 45100 5 10 0 0 180 0 1
device=DRC_Directive
}
