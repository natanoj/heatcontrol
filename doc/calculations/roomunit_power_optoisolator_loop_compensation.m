clc
clear
% Input characteristics
Vinmin=36
Vinmax=57

% Nominal and maximum output characteristics
Voutnom=3.3
% multiplied by 4, keeps the output high enough to keep the transformer size down... FIXME!
Ioutmax=0.25*4
Poutmax=Voutnom*Ioutmax
% target efficiency
etaFB=0.80

%target PWM frequency
freqnom=5e5

Iprimmax=Poutmax/(Vinmin*etaFB)
Dmaxdesign=0.6
Rlossprim=1
%estimating primary voltage drop, assuming peak prim input current
%as twice max average current
Vdropprim=2*Iprimmax*Rlossprim
% approx secondary Vdrop (rectifying diode)
Vdropsec=0.4
Npsmax=Dmaxdesign/(1-Dmaxdesign)*(Vinmin-Vdropprim)/(Voutnom+Vdropsec)

Vbiasnom=12
% approx bias voltage drop
Vdropbias=0.75
Npbmax=Dmaxdesign/(1-Dmaxdesign)*Vinmin/(Vbiasnom+Vdropbias)

% Chosen primary:secondary winding relationship
Nps=12.5

% Target peak primary current
Ipeak=4/3*(Ioutmax/Nps)*(1/(1-Dmaxdesign))

Lprimmin=Dmaxdesign/freqnom*Vinmin/(0.5*Ipeak)
% Chosen input winding inductance
Lp=400e-6

% actual max duty cycle
Dmax=(Voutnom+Vdropsec)*Nps/(Vinmin+(Voutnom+Vdropsec)*Nps)
% actual min duty cycle
Dmin=(Voutnom+Vdropsec)*Nps/(Vinmax+(Voutnom+Vdropsec)*Nps)

% Primary currents
Idcfbmax=Poutmax/(Vinmin*etaFB)
Ipristep=Idcfbmax/Dmax
dILprim=Vinmin/Lp*Dmax/freqnom
Iprimpeak=Ipristep+dILprim/2

% Primary switching mosfet
Vsnubbermax=25
Vdsprim=Vinmax+Vsnubbermax+(Voutnom+Vdropsec)*Nps

% Current sense resistor
Vcsmax=0.55
Rcs=Vcsmax=Iprimpeak

% Modulator Power Stage (MPS) gain (Kmps) is the ratio of modulator output current to CS
% pin voltage
Kmps=(1-Dmax)*Nps/Rcs

% equivalent load resistance at maximum output
Rload=Voutnom/Ioutmax

% Current mode control => Right Half Plane Zero
RHPZ=Rload*(Nps*(1-Dmax))^2/(2*pi*Dmax*Lp)
omegaRHPZ=2*pi*RHPZ

% MPS Current
function I = Imps(omega, Kmps, omegaRHPZ)
    I = Kmps.*(1-(i.*omega./omegaRHPZ));
end

% Output filter and load frequency characteristics
%  --+--L-ESRL--+-------+
%    |          |       |
%    ESRC1      ESRC2   |
%    C1         C2      RLoad
%    |          |       |
%  --+----------+-------+
% function Z = Zout(omega, Rload)
%     % filter components with parasitics
%     ESRC1=20e-3;
%     ESRC2=1.5;
%     ESRL=20e-3;
%     C1=68e-9;
%     C2=22e-6;
%     L=50e-9;

%     % A=Rload//(ESRC2+C2)+L+ESRL
%     A=(Rload+i.*omega.*C2.*Rload.*ESRC2)./(i.*omega.*C2.*Rload+i.*omega.*ESRC2+1)+i.*omega.*L+ESRL;

%     % Z=A//(C1+ESRC1)
%     Z=A.*(1./(i.*omega.*C1)+ESRC1)./(A+1./(i.*omega.*C1)+ESRC1);
% end

% Output filter and load frequency characteristics
%  --+----------+-------+
%    |          |       |
%    ESRC1      ESRC2   |
%    C1         C2      RLoad
%    |          |       |
%  --+----------+-------+
function Z = Zout(omega, Rload)
    % filter components with parasitics
    ESRC1=6e-3;
    ESRC2=6e-3;
    C1=39e-6;
    C2=82e-6;

    % A=(ESRC1+C1)//(ESRC2+C2)
    A=(ESRC1+1./(i.*omega.*C1)).*(ESRC2+1./(i.*omega.*C2))./(ESRC1+1./(i.*omega.*C1)+ESRC2+1./(ESRC2+1./(i.*omega.*C2)));

    % Z=A//Rload
    Z=A.*Rload./(A+Rload);
end

f=logspace(0,6,500);

% MPS plus filter and load (MPF) transfer function
function MPF=MPF(omega, Rload, Kmps, omegaRHPZ)
    MPF=Zout(omega, Rload).*Imps(omega, Kmps, omegaRHPZ);
end

% desired loop crossover frequency F0=5.5e3 Hz
F0=5.5e3
% previously chosen resistor values
Rctl=2e3
Rob=475
% Op-amp CTR@2ma
CTR2ma=0.85
% TPS23757 internal CTL to PWM divider
Kctl=2
% Cctl as parameter since that is the unknown
% for OPTOs set Rzctl = 0
function OPTO=OPTO(omega, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl)
    OPTO=Rctl/Rob*CTR2ma.*(1+i.*omega.*Rzctl.*Cctl)./ ...
        (1+i.*omega.*(Rctl+Rzctl).*Cctl).*1/Kctl;
end



% Cctl selected to be sufficiently below 1 at F0. Assuming simple
% integrator with no midband gain (Riz=0). Target an initial
% abs(Gmo(2*pi*F0))>0.5-0.8 to estimate Cctl. Cctl must be limited
% to 47 nF or less. Choose abs(Gmo(2*pi*F0))=0.75
Cctl=sqrt(1-(Rctl/Rob*CTR2ma/Kctl* ...
             abs(MPF(2*pi*F0, Rload, Kmps, omegaRHPZ))/0.75)^2)/ ...
     (2*pi*F0*Rctl);

Cctl=min(47e-9, Cctl)

decades=[5.6 6.8 8.2 10 12 15 18 22 27 33 39 47].*1e-9;
[tmp index] = min(abs(decades-Cctl));
printf("Chosen Cctl within decade boundaries: ")
Cctl=decades(index)

% For lower output power and voltage designs, a resistor in series
% with CCTL can provide phase boost for
% stability. Target RZCTL ~ RCTL /10).
Rzctl=249

absGmoF0=abs(Zout(2*pi*F0, Rload)*Imps(2*pi*F0, Kmps, omegaRHPZ))* ...
         abs(OPTO(2*pi*F0, Cctl, Rctl, Rzctl, Rob, CTR2ma, Kctl))
