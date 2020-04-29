syms Pr(EsE);
syms Pr(EnS);
syms Pr(E);
syms Pr(E2);
syms Pr(NS);
Pr(EsE) = 0.2;
Pr(EnS) = 0.01;
Tot_Adm = 10;
ES_Adm = 5;
N_ES_Adm = 5;
Pr(E) = Pr(EsE) + Pr(EnS)
disp(Pr(E))

Pr(NS) = Pr(EnS)/Pr(E)
