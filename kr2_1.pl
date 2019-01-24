%find two first elements>0 and sum
list(2,Sum,[]):-write("Sum="), write(Sum), !.
list(C,Sum,S):-
	S=[H|T],
	(C<2, H>0 -> Sum1 is Sum + H, K is C + 1, list(K,Sum1,T);
		list(C,Sum,T)).

count(L):-
    list(0,0,L).