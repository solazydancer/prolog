count(X, A, B, D) :-
D is X mod 60,
C is X div 60,
B is C mod 60,
A is C div 60.

main(X):-
count(X, A, B, D),
write(A), write(" h "), write(B), write(" min "), write(D), write(" sec").
