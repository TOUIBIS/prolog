man(jhon).
woman(frida).
woman(nelly).

parle(jhon,frida).
parle(frida,jhon).
parle(nelly,linda).
parle(linda,nelly).

aime(eric,nager).
aime(jules,X):-aime(anne,X).
aime(catherine,X) :-aime(eric,X).

homme(pierre).
homme(herve).
homme(arthur).
femme(marie).
femme(hamida).

pere(pierre,herve).
pere(pierre,arthur).
pere(pierre,marie).
pere(pierre,hamida).

enfant(X,Y) :- pere(Y,X).

fils(X,Y) :- enfant(X,Y),homme(X).
fils(X,Y) :- enfant(X,Y),femme(X).

fille(X,Y) :- enfant(X,Y),femme(X).

frereousoeur(X,Y) :- enfant(X,Z),enfant(Y,Z).

frere(X,Y) :- frereousoeur(X,Y),homme(X),homme(Y).

soeur(X,Y) :- fille(X,Z),fille(Y,Z).

insoluble(absenteisme).

admetSolution(X) :- X not .

probleme(X) :- admetSolution(X).



