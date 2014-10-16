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

% Controller bias power
Pbiasmax=12*1.2e-3

% DC output power
Pdcoutmax=Voutnom*Ioutmax
% Flyback max output power
Poutmax=Pdcoutmax+Pbiasmax
Rlmin=Voutnom/Ioutmax
% Min output current/power = 0 (=> DCM)

Mvdcmin=Voutnom/Vinmax
Mvdcmax=Voutnom/Vinmin
% target efficiency
etaFB=0.85
% assumed duty cycle at CCM/DCM boundary
Dbmax=0.3

Npsmin=etaFB*Dbmax/((1-Dbmax)*Mvdcmax)
% Chosen primary:secondary winding relationship
Nps=5.5

%target PWM frequency
freqnom=2e5

% Maximum magnetizing inductance for DCM
Lmmax=Nps^2*Rlmin*(1-Dbmax)^2/(2*freqnom)
% matching PoE trafo: würth electronics 750310019
% Chosen input winding inductance
Lp=310e-6

% actual min duty cycle
Dmin=Mvdcmin*sqrt(2*freqnom*Lp/(etaFB*Rlmin))
% actual max duty cycle
Dmax=Mvdcmax*sqrt(2*freqnom*Lp/(etaFB*Rlmin))

% Maximum device stresses
Ismmax=Dmin*Vinmax/(freqnom*Lp)
Idmmax=Nps*Ismmax
Vdmmax=Vinmax/Nps+Voutnom
Vsmmax=Vinmax+Nps*Voutnom

% Voltage spike at transistor turnoff
% trafo leakage inductance (max)
Ll=5e-6
% trafo primary winding resistance (max)
Rp=1.6
% trafo secondary winding resistance (max)
Rs=0.045
% trafo stray input capacitance (estimated)
Cp=10e-12

% transistor output capacitonce (Vgs=0, Vds=25)
Coss=100e-12

omegao=1/sqrt(Ll*(Coss+Cp))
freqring=omegao/(2*pi)
% characteristic impedance of ringing (input) circuit
Zo=sqrt(Ll/(Coss+Cp))
Vsmmax=Vinmax+Nps*Voutnom+Ismmax*Zo

% ringing power loss
Pring=freqnom*Ll*Ismmax^2/2

% Output filter capacitors
% assuming rc=20mOhm
rc=20e-3
Vrcpp=rc*Idmmax
Vcpp=Vr-Vrcpp
Cmin=Dmax*Voutnom/(freqnom*Rlmin*Vcpp)


% Power losses
% PMEG3050BEP diode characteristics
Vf=0.38 % @ 1A
Pvf=Vf*Ioutmax
% conduction power loss (and Vf loss?)
Pf=0.25 % approx @ 1A

% IRFL4315PBF transistor characteristics
Qg=12e-9
Coss % given above
Rds=185e-3

% max transistor conduction loss
Prdsmax=2*Rds*Dmax*Voutnom^2/(3*freqnom*Lp*Rlmin)
% switching loss
Pswmin=freqnom*Coss*Vinmin^2
Pswmax=freqnom*Coss*Vinmax^2
Pfetmin=Prdsmax+Pswmin/2
Pfetmax=Prdsmax+Pswmax/2

Prt1max=2*Rp*Dmax*Voutnom^2/(3*freqnom*Lp*Rlmin)
Prt1=2*Rp*Dmin*Voutnom^2/(3*freqnom*Lp*Rlmin)
Prt2=2*Nps*Rs*Voutnom^2/(3*Rlmin)*sqrt(2/(freqnom*Lp*Rlmin))

% Current sense resistor
Vcsmax=0.55
Rcs=Vcsmax/Ismmax

Cize=4.7e-9;
% estimate Rize at 1kHz
Rize=1/(2*pi*Cize*1e3)
% Rfbu chosen to be close to Rize=33.9 kOhm
Rfbu=41.2e3
% TLV431 ref voltage
Vref=1.24;
Rfbl=Vref*Rfbu/(Voutnom-Vref);
% => 24.8e3, chose to match standard series
Rfbl=24.3e3

% Op-amp CTR@2ma
%CTR2ma=0.2
CTR2ma=0.85
Vledopto=1.1
Iledopto=2e-3
Vledoptok=Vref+150e-3
Rob=(Voutnom-Vledopto-Vledoptok)/Iledopto;
% => 405, choose Rob=402
Rob=402

Vzdcmax=1.7;
Vctlmax=Vzdcmax+2*Vcsmax;
Vctlnom=(Vzdcmax+Vctlmax)/2
Vb=5;
Rctl=(Vb-Vzdcmax)/(Iledopto*CTR2ma);
% => 1941, choose Rctl=2k
Rctl=2e3

% Output filter and load frequency characteristics
%  --+----------+
%    |          |
%    ESRC1      |
%    C1         RLoad
%    |          |
%  --+----------+
function Z = Zout(omega, Rload)
    % filter components with parasitics
    ESRC1=10e-3;
    C1=10e-6;

    A=ESRC1+1./(i.*omega.*C1);

    Z=A.*Rload./(A+Rload);
end

f=logspace(0,6,500);

% desired loop crossover frequency F0=5.5e3 Hz
F0=3e3

% TPS23757 internal CTL to PWM divider
Kctl=2

% current sense resistor voltage slope
Sn=Vinmin*Rcs/Lp % [V/s]
% TPS23757 internal slope peak value
Vslope=155e-3
Se=Vslope*freqnom/Dmin % [V/s]
% output filter capacitance and ESR
Cof=10e-6
ESRCof=10e-3;

M=Nps*Voutnom/Vinmin;
% power stage pole 1
omegap1=2/(Rlmin*Cof)
fp1=omegap1/(2*pi)
% power stage pole 2
omegap2=2*freqnom*(1/(1+1/M))^2
fp2=omegap2/(2*pi)
% power stage zero 1
omegaz1=1/(ESRCof*Cof) % LHPZ
fz1=omegaz1/(2*pi)
% power stage zero 2
omegaz2=Nps^2*Rlmin/(M*(1+M)*Lp)
fz2=omegaz2/(2*pi)

Gfb=1/Kctl;
Go=Vinmin*Gfb*sqrt(freqnom*Rlmin/(2*Lp))*1/(Sn+Se)

function MPF=MPF(omega, Go, omegaz1, omegaz2, omegap1, omegap2)
    MPF=Go.*(1+i.*omega./omegaz1).*(1-i.*omega./omegaz2) ...
        ./((1+i.*omega./omegap1).*(1+i.*omega./omegap2));
end
mpfdata=MPF(2*pi.*f, Go, omegaz1, omegaz2, omegap1, omegap2);
absfigh=figure
hold all
loglog(f, abs(mpfdata), ";Uncompensated MPF;")
grid on
title "Transfer function magnitude"
argfigh=figure
hold all
semilogx(f, arg(mpfdata), ";Uncompensated MPF;")
grid on
title "Transfer function phase"


% Cctl as parameter since that is the unknown
% for simplified transfer function OPTOs set Rzctl = 0
function OPTO=OPTO(omega, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl)
    OPTO=Rctl/Rob*CTR2ma.*(1+i.*omega.*Rzctl.*Cctl)./ ...
        (1+i.*omega.*(Rctl+Rzctl).*Cctl).*1/Kctl;
end


Rload=Rlmin


% Cctl selected to be sufficiently below 1 at F0. Assuming simple
% integrator with no midband gain (Riz=0). Target an initial
% abs(Gmo(2*pi*F0))>0.5-0.8 to estimate Cctl. Cctl must be limited
% to 47 nF or less. Choose abs(Gmo(2*pi*F0))=0.75
absGmo=0.75
%absGmo=1.6
Cctl=sqrt(1-(Rctl/Rob*CTR2ma/Kctl* ...
             abs(MPF(2*pi*F0, Go, omegaz1, omegaz2, omegap1, omegap2))/absGmo)^2)/ ...
     (2*pi*F0*Rctl)

Cctl=min(47e-9, Cctl);

decades=[5.6 6.8 8.2 10 12 15 18 22 27 33 39 47].*1e-9;
[tmp index] = min(abs(decades-Cctl));
printf("Chosen Cctl within decade boundaries: ")
Cctl=decades(index)

optodata=OPTO(2*pi.*f, Cctl, Rctl, 0, Rob, CTR2ma, Kctl);
figure(absfigh)
loglog(f, abs(optodata), ";Optocoupler (simple);")
figure(argfigh)
semilogx(f, arg(optodata), ";Optocoupler (simple);")


% For lower output power and voltage designs, a resistor in series
% with CCTL can provide phase boost for
% stability. Target RZCTL ~ RCTL /10).
Rzctl=249
%Rzctl=0

optodata=OPTO(2*pi.*f, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl);
figure(absfigh)
loglog(f, abs(optodata), ";Optocoupler (with Rzctl);")
figure(argfigh)
semilogx(f, arg(optodata), ";Optocoupler (with Rzctl);")

absGmoF0=abs(MPF(2*pi*F0, Go, omegaz1, omegaz2, omegap1, omegap2)) ...
         *abs(OPTO(2*pi.*F0, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl))

% overall transfer function unity at selected crossover yields Riz
% cannot go for unity, will choose 2, makes unstable system??
Riz=Rfbu*(2/absGmoF0-1)
% choose Ciz for a zero 4-5 times below crossover frequency
Ciz=5/(2*pi*Riz*F0)
% Cip for a pole at 10 times F0
Cip=1/(20*pi*Riz*F0)

% integrator stage transfer function
function INT=INT(omega, Riz, Rfbu, Ciz, Cip)
    INT=Riz/Rfbu.*(1+1./(i.*omega.*Riz.*Ciz))./(1+i.*omega.*Riz.*Cip);
end

intdata=INT(2*pi.*f, Riz, Rfbu, Ciz, Cip);
figure(absfigh)
loglog(f, abs(intdata), ";Integrator;")
figure(argfigh)
semilogx(f, arg(intdata), ";Integrator;")

% overall flyback transfer function
function FB=FB(omega, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, ...
               CTR2ma, Kctl, Riz, Rfbu, Ciz, Cip)
    FB=-MPF(omega, Rload, omegaz1, omegaz2, omegap1, omegap2).* ...
       OPTO(omega, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl).* ...
       (INT(omega, Riz, Rfbu, Ciz, Cip)+1);
end

fbdata=FB(2*pi.*f, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, CTR2ma, ...
          Kctl, Riz, Rfbu, Ciz, Cip);


FBf0=FB(2*pi.*F0, Rload, omegaz1, omegaz2, omegap1, omegap2, Cctl, Rctl, Rzctl, Rob, CTR2ma, ...
        Kctl, Riz, Rfbu, Ciz, Cip)
phasemargin=arg(FBf0)*180/pi
gainF0=20*log10(abs(FBf0))

figure(absfigh)
loglog(f, abs(fbdata), ";Overall compensated;")
figure(argfigh)
semilogx(f, arg(fbdata), ";Overall compensated;")
