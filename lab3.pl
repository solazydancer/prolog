list(0,[]):-!.
list(C,S):-
	S=[H|T],
	list(K,T),
	Y is H mod 2,
	(Y=0 -> C is K+1;C is K).

count(L):-
    list(C,L),
	write(C).