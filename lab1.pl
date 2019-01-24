main((X1,Y1),R1,(X2,Y2),R2) :-
((X1+R1)<(X2+R2) -> write('false');
(X1-R1)>(X2-R2) -> write('false');
(Y1+R1)<(Y2+R2) -> write('false');
(Y1-R1)>(Y2-R2) -> write('false');
write('true')).
