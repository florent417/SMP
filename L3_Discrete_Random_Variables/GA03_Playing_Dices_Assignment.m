%% Group assignemnt 3   Playing dices
% I et terningespil kastes en terning tre gange og det samlede antal øjne i de tre slag tælles. Den
% stokastiske variabel X angiver summen af de tre slag. Terningen kan antages for ideel
%% Q1 Hvor mange muligheder er der for, at X er hhv. 3, 4,…, 18?
% Mulighederne for alle udfald findes ved at gange alle udfald i hvert terningekast.
% Da de er uafhængige kan dette lade sige gøre 

% $Pr(A and B and C)= Pr(A) \cdot Pr(B) \cdot Pr(c)$
syms Pr(ABC)
Pr(ABC) = 6 * 6 * 6

posibilities = [3:18]
Outcomes = [1 3 6 10 15 21 25 27 27 25 21 15 10 6 3 1]
probability_outcomes = Outcomes * 1/Pr(ABC)


%% Q2 Opskriv og tegn pmf’en fX(x) for X
% Ud af x-aksen er det de muligheder der er
% ud af y-aksen finder man sansynligheden for det, ved at dividere med det
% samlede antal mulighder, som er gjort ovenfor
bar(posibilities, probability_outcomes)

%% Q3 