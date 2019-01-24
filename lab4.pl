list([], []) :- !.
list(L, P) :-
	L = [H | T],
	K is H*2,
	P = [K | S],
	list(T, S).
main(L) :-
	list(L, P),
	forall(member(X, P), writeln(X)).