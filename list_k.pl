% list_k(List, X, K) means that X is the Kth element from list List
list_k([Head|_], Head, 1) :- !.
list_k([_|Tail], X, K) :- K>1, K1 is K-1, list_k(Tail, X, K1), !.
