% casoPrueba1
parent(loo, juan).
parent(loo, ana).
parent(valeria, loo).
parent(carlos, loo).
% casoPrueba2
parent(adrian, gorge).
parent(gorge, susi).
% Primer caso
parent(marta, juan).
parent(marta, ana).
% Segundo caso
parent(jorge, diego).
% Tercer caso
parent(sofia, mariana).
% Primer caso
sibling(marta, luis).
% Tercer caso
sibling(sofia, eduardo).
sibling(sofia, roberto).
% Segundo caso
grandparent(juan, jorge).
grandparent(maria, jorge).
% casoPrueba2
grandparent(josua, gorge).
grandparent(helena, gorge).
% Segundo caso
uncle(luis, jorge).
uncle(pedro, jorge).
aunt(rosa, jorge).
% Primer caso
cousin(marta, carlos).
% Tercer caso
cousin(sofia, julia). 
cousin(sofia, felipe).
% casoPrueba2
aunt(mary, gorge).

% Niveles de consanguinidad
levelConsanguinity(X, Y, 1) :- parent(X, Y); parent(Y, X).
levelConsanguinity(X, Y, 2) :- sibling(X, Y); sibling(Y, X); grandparent(X, Y); grandparent(Y, X).
levelConsanguinity(X, Y, 3) :- uncle(X, Y); aunt(X, Y); uncle(Y, X); aunt(Y, X); cousin(X, Y); cousin(Y, X).

% Distribucion de la herencia
distributeInheritance(X, Total, Distribution) :-
    findall(Y, levelConsanguinity(X, Y, 1), FirstLevel),
    findall(Y, levelConsanguinity(X, Y, 2), SecondLevel),
    findall(Y, levelConsanguinity(X, Y, 3), ThirdLevel),

    length(FirstLevel, Len1),
    length(SecondLevel, Len2),
    length(ThirdLevel, Len3),

    TotalFirstLevel is Len1 * 30,
    TotalSecondLevel is Len2 * 20,
    TotalThirdLevel is Len3 * 10,

    Sum is TotalFirstLevel + TotalSecondLevel + TotalThirdLevel,
    (Sum > 100 ->
        PercentFirstLevel is (TotalFirstLevel * 100) / Sum,
        PercentSecondLevel is (TotalSecondLevel * 100) / Sum,
        PercentThirdLevel is (TotalThirdLevel * 100) / Sum;
        PercentFirstLevel is TotalFirstLevel,
        PercentSecondLevel is TotalSecondLevel,
        PercentThirdLevel is TotalThirdLevel
    ),

    TotalInheritanceFirstLevel is ((PercentFirstLevel / 100) * Total),
    TotalInheritanceSecondLevel is ((PercentSecondLevel / 100) * Total),
    TotalInheritanceThirdLevel is ((PercentThirdLevel / 100) * Total),

    (Len1 > 0 ->
        InheritanceFirstLevel is TotalInheritanceFirstLevel / Len1,
        write('Primer nivel: '), nl, print_list(FirstLevel, InheritanceFirstLevel);
        InheritanceFirstLevel = 0),

    (Len2 > 0 ->
        InheritanceSecondLevel is TotalInheritanceSecondLevel / Len2,
        write('Segundo nivel: '), nl, print_list(SecondLevel, InheritanceSecondLevel);
        InheritanceSecondLevel = 0),

    (Len3 > 0 ->
        InheritanceThirdLevel is TotalInheritanceThirdLevel / Len3,
        write('Tercer nivel: '), nl, print_list(ThirdLevel, InheritanceThirdLevel);
        InheritanceThirdLevel = 0),

    % Asignacion de la distribucion final
    Distribution = [
        primer_nivel(InheritanceFirstLevel*Len1),
        segundo_nivel(InheritanceSecondLevel*Len2),
        tercer_nivel(InheritanceThirdLevel*Len3)
    ].

% Funcion para imprimir la lista
print_list([], _).
print_list([Head | Tail], Value) :-
    write(Head), write(' recibe: '), write(Value), nl,
    print_list(Tail, Value).
