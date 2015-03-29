%% chosen component values from E48 series if possible

close all
clc
clear
% Input characteristics
Vinmin=36
Vinmax=57

% Nominal and maximum output characteristics
Voutnom=3.3
Ioutmax=0.25

% maximum output ripple 2 %
Vr=Voutnom*0.02

% Bias voltage
Vc=12
% Controller bias power
Pbiasmax=12*1.2e-3;

% DC output power
Pdcoutmax=Voutnom*Ioutmax;
% Flyback max output power
Poutmax=Pdcoutmax+Pbiasmax;
Rlmin=Voutnom/Ioutmax;
% Min output current/power = 0 (=> DCM)

Mvdcmin=Voutnom/Vinmax;
Mvdcmax=Voutnom/Vinmin;
% target efficiency
etaFB=0.85
% assumed duty cycle at CCM/DCM boundary
Dbmax=0.3

Npsmin=etaFB*Dbmax/((1-Dbmax)*Mvdcmax);
% => 3.9740
% Chosen primary:secondary winding relationship
% (1-10):(2-9):(3-8):(5-4) 1:2.5:0.75:7.5
%  5 V    AUX   3.3   In
Nps=10

%target PWM frequency
freqnom=2e5

% resistor for selecting frequency in control circuit
Rfrs=17250/200;
% => 86.25
Rfrs=86.6e3

% Maximum magnetizing inductance for DCM
Lmmax=Nps^2*Rlmin*(1-Dbmax)^2/(2*freqnom)
% => 0.0016170
% matching PoE trafo: Epcos EFD 15 B
% Chosen input winding inductance
Lp=100e-6

% actual min duty cycle
Dmin=Mvdcmin*sqrt(2*freqnom*Lp/(etaFB*Rlmin))
% actual max duty cycle
Dmax=Mvdcmax*sqrt(2*freqnom*Lp/(etaFB*Rlmin))

% diLmmax for DCM(?)
diLmmax=Nps*Voutnom*(1-Dmin)/(freqnom*Lp)
%Idcfbmax=Poutmax/(Vinmin*etaFB)
%Ipristep=Idcfbmax/Dmax
%Iprimpeak=Ipristep*2

% Maximum device stresses
Ismmax=Dmin*Vinmax/(freqnom*Lp)
Idmmax=Nps*Ismmax
Vdmmax=Vinmax/Nps+Voutnom
% Maximum switch voltage without leakage spike
Vsmmax=Vinmax+Nps*Voutnom

% Voltage spike at transistor turnoff
% trafo leakage inductance (max)
Ll=3e-6;
% trafo primary winding resistance (max)
Rp=0.05;
% trafo secondary winding resistance (max)
Rs=0.43;
% trafo stray input capacitance (estimated)
Cp=10e-12;

% transistor output capacitonce (Vgs=0, Vds=25)
Coss=27e-12;

omegao=1/sqrt(Ll*(Coss+Cp));
freqring=omegao/(2*pi)
% characteristic impedance of ringing (input) circuit
Zo=sqrt(Ll/(Coss+Cp))
Vspike=Ismmax*Zo
Vsmmax=Vinmax+Nps*Voutnom+Vspike

% ringing power loss
Pring=freqnom*Ll*Ismmax^2/2;


% Power losses
% PMEG2015EPK diode characteristics
Vf=0.42;
Pvf=Vf*Ioutmax;
% conduction power loss (and Vf loss?)
Pf=0.25; % approx @ 1A

% IRLML0100TRPBF transistor characteristics
Qg=2.5e-9;
Rds=235e-3; % max at Vgs=4.5 V


% input RCD snubber network
% limit Vspike to < 15 V
Csn=(Vspike/5)^2*(Coss+Cp);
% =>  1.1647e-08, choose Csn=15 nF
Csn=15e-9
% Rsn for timeconstant 200 times switching freq
Rsn=200/(freqnom*Csn);
% => 6.6667e+04, choose Rsn=64.9 k
Rsn=64.9e3


% input filter capacitance, target Vin ripple 1 V
Vinripple=1;
Cinmin=diLmmax*Dmax/(freqnom*Vinripple)
% => 1.2718e-06, choose Cin=2.2 uF low ESR (X7R)

% Output filter capacitors
% assuming rc=20mOhm
rc=20e-3;
Vrcpp=rc*Idmmax;
Vcpp=Vr-Vrcpp;
Coutmin=Dmax*Voutnom/(freqnom*Rlmin*Vcpp)

% max transistor conduction loss
Prdsmax=2*Rds*Dmax*Voutnom^2/(3*freqnom*Lp*Rlmin);
% switching loss
Pswmin=freqnom*Coss*Vinmin^2;
Pswmax=freqnom*Coss*Vinmax^2;
Pfetmin=Prdsmax+Pswmin/2;
Pfetmax=Prdsmax+Pswmax/2;

Prt1max=2*Rp*Dmax*Voutnom^2/(3*freqnom*Lp*Rlmin);
Prt1=2*Rp*Dmin*Voutnom^2/(3*freqnom*Lp*Rlmin);
Prt2=2*Nps*Rs*Voutnom^2/(3*Rlmin)*sqrt(2/(freqnom*Lp*Rlmin));

% Current sense resistor
Vcsmax=0.55;
Rcs=Vcsmax/Ismmax;
% =>  1.7654
Rcs=1.8

Cize=1e-9;
% estimate Rize at 1kHz
Rize=1/(2*pi*Cize*1e3)
% => 1.5915e+05
% Rfbu chosen to be close to Rize
Rfbu=162e3
% TLV431 ref voltage
Vref=1.24;
Rfbl=Vref*Rfbu/(Voutnom-Vref)
% => 9.7515e+04, choose to match standard series
Rfbl=95.3e3

% Op-amp CTR@2ma
CTR=0.85;
Vledopto=1.1;
Iledopto=2e-3;
Vledoptok=Vref+150e-3;
Rob=(Voutnom-Vledopto-Vledoptok)/Iledopto;
% => 405, choose Rob=402
Rob=402

Vzdcmax=1.7;
Vctlmax=Vzdcmax+2*Vcsmax;
Vctlnom=(Vzdcmax+Vctlmax)/2;
Vb=5;
Rctl=(Vb-Vzdcmax)/(Iledopto*CTR)
% => 1941, choose Rctl=2k
Rctl=1.96e3

f=logspace(0,6,500);

% desired loop crossover frequency F0=5.5e3 Hz
F0=5.5e3

% TPS23757 internal CTL to PWM divider
Kctl=2;

% current sense resistor voltage slope
Sn=Vinmin*Rcs/Lp; % [V/s]
% TPS23757 internal slope peak value
Vslope=155e-3;
Se=Vslope*freqnom/Dmin; % [V/s]
% output filter capacitance and ESR
Cof=150e-6
ESRCof=45e-3;

M=Nps*Voutnom/Vinmin;
% power stage pole 1
omegap1=2/(Rlmin*Cof);
fp1=omegap1/(2*pi)
% power stage pole 2
omegap2=2*freqnom*(1/(1+1/M))^2;
fp2=omegap2/(2*pi)
% power stage zero 1
omegaz1=1/(ESRCof*Cof); % LHPZ
fz1=omegaz1/(2*pi)
% power stage zero 2
omegaz2=Nps^2*Rlmin/(M*(1+M)*Lp);
fz2=omegaz2/(2*pi)

Gfb=1/Kctl;
Go=Vinmin*Gfb*sqrt(freqnom*Rlmin/(2*Lp))*1/(Sn+Se);

function MPF=MPF(omega, Go, omegaz1, omegaz2, omegap1, omegap2)
    MPF=Go.*(1+i.*omega./omegaz1).*(1-i.*omega./omegaz2) ...
        ./((1+i.*omega./omegap1).*(1+i.*omega./omegap2));
end

mpfdata=MPF(2*pi.*f, Go, omegaz1, omegaz2, omegap1, omegap2);
absfigh=figure;
hold on
loglog(f, abs(mpfdata), "b;Uncompensated MPF;")
grid on
title "Transfer function magnitude"
argfigh=figure;
hold on
semilogx(f, arg(mpfdata), "b;Uncompensated MPF;")
grid on
title "Transfer function phase"


% Cctl as parameter since that is the unknown
% for simplified transfer function OPTOs set Rzctl = 0
function OPTO=OPTO(omega, Cctl, Rctl, Rzctl, Rob, CTR, Kctl)
    OPTO=Rctl/Rob*CTR.*(1+i.*omega.*Rzctl.*Cctl)./ ...
        (1+i.*omega.*(Rctl+Rzctl).*Cctl).*1/Kctl;
end

Rload=Rlmin;

% Cctl selected to be sufficiently below 1 at F0. Assuming simple
% integrator with no midband gain (Riz=0). Target an initial
% abs(Gmo(2*pi*F0))>0.5-0.8 to estimate Cctl. Cctl must be limited
% to 47 nF or less. Choose abs(Gmo(2*pi*F0))=0.75
absGmotarget=0.75
%absGmo=1.6
Cctl=sqrt(1-(Rctl/Rob*CTR/Kctl* ...
             abs(MPF(2*pi*F0, Go, omegaz1, omegaz2, omegap1, omegap2))/absGmotarget)^2)/ ...
     (2*pi*F0*Rctl)

Cctl=min(47e-9, Cctl);

decades=[1.0 1.2 1.5 1.8 2.2 2.7 3.3 3.9 4.7 5.6 6.8 8.2 10 12 15 18 22 27 33 39 47].*1e-9;
[tmp index] = min(abs(decades-Cctl));
printf("Chosen Cctl within decade boundaries: ")
Cctl=decades(index)

% optodata=OPTO(2*pi.*f, Cctl, Rctl, 0, Rob, CTR, Kctl);
% figure(absfigh)
% loglog(f, abs(optodata), "g;Optocoupler (simple);")
% figure(argfigh)
% semilogx(f, arg(optodata), "g;Optocoupler (simple);")


% For lower output power and voltage designs, a resistor in series
% with CCTL can provide phase boost for
% stability. Target RZCTL ~ RCTL /10).
%Rzctl=249
Rzctl=1780


optodata=OPTO(2*pi.*f, Cctl, Rctl, Rzctl, Rob, CTR, Kctl);
figure(absfigh)
loglog(f, abs(optodata), "y;Optocoupler (with Rzctl);")
figure(argfigh)
semilogx(f, arg(optodata), "y;Optocoupler (with Rzctl);")


% gmodata=abs(MPF(2*pi*f, Go, omegaz1, omegaz2, omegap1, omegap2)).*...
%         OPTO(2*pi.*f, Cctl, Rctl, Rzctl, Rob, CTR, Kctl);
% figure(absfigh)
% loglog(f, abs(gmodata), "c;Gmo;")
% figure(argfigh)
% semilogx(f, arg(gmodata), "c;Gmo;")

absGmoF0=abs(MPF(2*pi*F0, Go, omegaz1, omegaz2, omegap1, omegap2)) ...
         *abs(OPTO(2*pi.*F0, Cctl, Rctl, Rzctl, Rob, CTR, Kctl))

% overall transfer function unity at selected crossover yields Riz
Riz=Rfbu*(1/absGmoF0-1)
Riz=6.81e3
% choose Ciz for a zero 4-5 times below crossover frequency
Ciz=4/(2*pi*Riz*F0)
% => 1.6997e-08
Ciz=18e-9
% Cip for a pole at 10 times F0
Cip=1/(10*pi*Riz*F0)
%=>  8.4985e-10
Cip=820e-12
% integrator stage transfer function
function INT=INT(omega, Riz, Rfbu, Ciz, Cip)
    INT=Riz/Rfbu.*(1+1./(i.*omega.*Riz.*Ciz))./(1+i.*omega.*Riz.*Cip);
end

intdata=INT(2*pi.*f, Riz, Rfbu, Ciz, Cip);
figure(absfigh)
loglog(f, abs(intdata), "k;Integrator;")
figure(argfigh)
semilogx(f, arg(intdata), "k;Integrator;")

% overall flyback transfer function
function FB=FB(omega, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, ...
               CTR, Kctl, Riz, Rfbu, Ciz, Cip)
    FB=-MPF(omega, Rload, omegaz1, omegaz2, omegap1, omegap2).* ...
       OPTO(omega, Cctl, Rctl, Rzctl, Rob, CTR, Kctl).* ...
       (INT(omega, Riz, Rfbu, Ciz, Cip)+1);
end

fbdata=FB(2*pi.*f, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, CTR, ...
          Kctl, Riz, Rfbu, Ciz, Cip);


% adjusted F0
[tmp index] = min(abs(20*log10(abs(fbdata))-1));
F0=f(index)
FBf0=FB(2*pi.*F0, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, CTR, ...
        Kctl, Riz, Rfbu, Ciz, Cip)
phasemargin=arg(FBf0)*180/pi
gainF0=20*log10(abs(FBf0))

figure(absfigh)
loglog(f, abs(fbdata), "r;Overall compensated;")
figure(argfigh)
semilogx(f, arg(fbdata), "r;Overall compensated;")

%%%
% adapter presence optocoupler
Rapb=(12-1.2)/20e-3
% => 540, choose Rapb=590
Rapb_out=(3.3-0.1)/1e-3
% => 3200, choose Rapb_out=3320

%% FIXME: calculate final eta!

Qgate=6e-9;
Pgate=Vc*freqnom*Qgate;
Pdrive=Pgate;
Idrive=Pdrive/Vc
Itotal=Idrive+0.92e-3
Tstartup=4e-3;
Vcuvh=6.5;
Cvcmin=Tstartup*Itotal/Vcuvh
Cvc=10e-6+0.22e-6
Vcuv=15;
Ivcbootstrap=4e-3;
Tbootstrap=Cvc*Vcuv/Ivcbootstrap
Trecharge=Cvc*Vcuvh/Ivcbootstrap
Tdischarge=Cvc*Vcuvh/Itotal
Dfaulty=Tdischarge/(Tdischarge+Trecharge)
Fhiccup=1/(Tdischarge+Trecharge)
