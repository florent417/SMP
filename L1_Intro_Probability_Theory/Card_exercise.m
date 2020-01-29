nr_of_games = 100000

%% Question 2

Number_Pikes=0; %Count number of times getting an Pikes in first draw
Number_Clovers=0; %Count number of times getting an Clovers in first draw
Number_Hearts=0; %Count number of times getting an Hearts in first draw
Number_Tiles=0; %Count number of times getting an Tiles in first draw

for n=1:nr_of_games
    cards  = shufflecards(); %New shuffling of cards
    Number_Pikes=Number_Pikes+contains(cards(1).name,"Pikes");
    Number_Clovers=Number_Clovers+contains(cards(1).name,"Clovers");
    Number_Hearts=Number_Hearts+contains(cards(1).name,"Hearts");
    Number_Tiles=Number_Tiles+contains(cards(1).name,"Tiles");
end

fprintf("Probability of each suit is")

Est_Number_Pikes=Number_Pikes/nr_of_games;
Est_Number_Clovers=Number_Clovers/nr_of_games;
Est_Number_Hearts=Number_Hearts/nr_of_games;
Est_Number_Tiles=Number_Tiles/nr_of_games;

%% Question 3 Beregn sandsynligheden for at trække et es, Pr(Es).

Number_Aces = 0; %Count number of times Ace is drawn
for n=1:nr_of_games
    cards = shufflecards();
    Number_Aces = Number_Aces + contains(cards(1).name, "Ace");
end
fprintf("Probability of getting an ace is")

Est_Number_Aces=Number_Aces/nr_of_games

%% Question 4 Beregn sandsynligheden for at trække hjerter es, Pr(Es ? H)

Number_Heart_Aces = 0;

for n=1:nr_of_games
    cards = shufflecards();
    Number_Heart_Aces = Number_Heart_Aces + contains(cards(1).name, "Ace of Hearts");
end

fprintf("Probability of getting an Ace of Hearts is")

Est_Number_Heart_Aces=Number_Heart_Aces/nr_of_games

%% Question 5 Er hændelserne Es og H uafhængige?
Est_Independence_Hearts_Aces = Est_Number_Aces * Est_Number_Hearts; 

if Number_Heart_Aces == Est_Independence_Hearts_Aces
    fprintf("Hearts and ace are exclusive")
else
    fprintf("Hearts and Aces are not Exclusive")
end

%% Question 6 Beregn sandsynligheden for at trække mindst et es, Pr(mindst 1 es)

Two_Cards_Aces_Either = 0;

for n=1:nr_of_games
    cards = shufflecards();
    if contains(cards(1).name, "Ace") || contains(cards(2).name, "Ace")
       Two_Cards_Aces_Either = Two_Cards_Aces_Either + 1;
    end
end

Est_Number_Aces_Either_Two_cards=Two_Cards_Aces_Either/nr_of_games

%% Question 7 . Beregn sandsynligheden for at trække to esser, Pr(2 esser).

Two_Cards_Aces = 0;

for n=1:nr_of_games
    cards = shufflecards();
    if contains(cards(1).name, "Ace") && contains(cards(2).name, "Ace")
       Two_Cards_Aces = Two_Cards_Aces + 1;
    end
end

Est_Number_Aces_Two_cards=Two_Cards_Aces/nr_of_games

%% Question 8 Beregn sandsynligheden for at hjerter es er blandt de to kort, Pr(Es ? H).

Two_Cards_Aces_Hearts = 0;

for n=1:nr_of_games
    cards = shufflecards();
    if contains(cards(1).name, "Ace of Hearts") || contains(cards(2).name, "Ace of Hearts")
       Two_Cards_Aces_Hearts = Two_Cards_Aces_Hearts + 1;
    end
end

Est_Number_Aces_Hearts_Two_cards=Two_Cards_Aces/nr_of_games

%% Question 9 Beregn sandsynligheden for at ingen af de to kort er hjerter es, Pr(ikke (Es ? H)).

Not_Aces_Hearts_Two_cards = 0;

for n=1:nr_of_games
    cards = shufflecards();
    if not(contains(cards(1).name, "Ace of Hearts")) && not(contains(cards(2).name, "Ace of Hearts"))
       Not_Aces_Hearts_Two_cards = Not_Aces_Hearts_Two_cards + 1;
    end
end

Est_Number_Not_Aces_Hearts_Two_cards=Not_Aces_Hearts_Two_cards/nr_of_games

%% Question 10 Beregn sandsynligheden for at summen af de to kort er 17, Pr(Sum = 17) 
Sum_17_Two_cards = 0;

for n=1:nr_of_games
    cards = shufflecards();
    if (cards(1).value + cards(2).value) == 17
       Sum_17_Two_cards = Sum_17_Two_cards + 1;
    end
end

Est_Number_Sum_17_Two_cards=Sum_17_Two_cards/nr_of_games