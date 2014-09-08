Dmax=0.589
Rcs=1.8
Nps=12.5

% MPS gain (Kmps) is the ratio of modulator output current to CS
% pin voltage

Kmps = (1-Dmax)*Nps/Rcs

Voutnom=3.3
Ioutmax=0.25
Poutmax=Voutnom*Ioutmax

Rload=Voutnom^2/Poutmax

% input winding inductance
Lp=127e-6
% Current mode control => Right Half Plane Zero
RHPZ=Rload*(Nps*(1-Dmax))^2/(2*pi*Dmax*Lp)
