%find the most often element and min element, multiply
list(Min, [], Min2) :-
Min2 is Min, !.

list(Min, S, Min2) :-
	S = [H|T],
	(H < Min -> Min1 is H, list(Min1, T, Min2);
		list(Min, T, Min2)).

searchMax(El, _, [], Oft) :- Oft is El, !.
searchMax(El, Max, S, Oft) :-
S = [H|T],
goTail(H, 1, T, K),
(K > Max -> Max1 is K, Hmax is H, searchMax(Hmax, Max1, T, Oft); searchMax(El, Max, T, Oft)).


goTail(_, C, [], K) :- K is C, !.
goTail(El, C, S, K2) :-
S = [H|T],
(El =:= H -> K is C+1, goTail(El, K, T, K2); goTail(El, C, T, K2)).
  
count(L):-
	L = [H|_],
    list(H, L, Min),
    write("Min = "),
    write(Min),
    nl,
    searchMax(H, 0, L, Oft), 
    write("Oft = "),
    write(Oft),
    nl,
    P is Oft*Min,
    write("Mult= "),
    write(P).