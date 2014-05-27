% abc(L) means that a, b and c atoms are within list L in consecutive order
abc(L) :- append(Pred, [a, b, c|Suc], L), !.
