% actual max duty cycle
Dmax=0.589
% Current sense resistor
Rcs=1.8
% Primary:secondary winding relationship
Nps=12.5

% Modulator Power Stage (MPS) gain (Kmps) is the ratio of modulator output current to CS
% pin voltage
Kmps = (1-Dmax)*Nps/Rcs

% Nominal and maximum output characteristics
Voutnom=3.3
Ioutmax=0.25
Poutmax=Voutnom*Ioutmax

% equivalent load resistance
Rload=Voutnom^2/Poutmax

% input winding inductance
Lp=127e-6
% Current mode control => Right Half Plane Zero
RHPZ=Rload*(Nps*(1-Dmax))^2/(2*pi*Dmax*Lp)
omegaRHPZ = 2*pi*RHPZ

% MPS Current
function I = Imps(omega)
    I = Kmps.*(1-(i.*omega./omegaRHPZ))
end

% Output filter and load frequency characteristics
%  --+--L-ESRL--+-------+
%    |          |       |
%    ESRC1      ESRC2   |
%    C1         C2      RLoad
%    |          |       |
%  --+----------+-------+
function Z = Zout(omega)
    ESRC1=20e-3
    ESRC2=20e-3
    ESRL=20e-3
    C1=68e-9
    C2=22e-6
    L=50e-9

    % A=Rload//(ESRC2+C2)+L+ESRL
    A=(Rload+i.*omega.*C2.*Rload.*ESRL)./(i.*omega.*C2.*Rload+i.*omega.*ESRL+1)+i.*omega.*L+ESRL

    % Z=A//(C1+ESRC1)
    Z=A.*(1./(i.*omega.*C1)+ESRC1)/(A+1./(i.*omega.*C1)+ESRC1)
end

f=logspace(0,1e7,500);

Imps(2*pi.*f)
