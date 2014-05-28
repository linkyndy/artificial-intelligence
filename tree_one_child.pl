% one_child(Tree, N) means that N is the number of nodes in Tree that have only one child
one_child(null, 0) :- !.
one_child(tree(_, null, null), 0) :- !.
one_child(tree(_, null, Right), N) :- one_child(Right, N1), N is N1+1, !.
one_child(tree(_, Left, null), N) :- one_child(Left, N1), N is N1+1, !.
one_child(tree(_, Left, Right), N) :- one_child(Left, N1), one_child(Right, N2), N is N1+N2, !.
