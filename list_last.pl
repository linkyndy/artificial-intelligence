% last(L, E) means that E is the last element from list L
last([H|[]], H) :- !.
last([H|T], E) :- last(T, E), !.
