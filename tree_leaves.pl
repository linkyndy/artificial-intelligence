% count_leaves(Tree, N) means that N is the number of nodes in tree Tree that have no children
count_leaves(nil, 0) :- !.
count_leaves(tree(_, nil, nil), 1) :- !.
count_leaves(tree(_, Left, nil), N) :- count_leaves(Left, N), !.
count_leaves(tree(_, nil, Right), N) :- count_leaves(Right, N), !.
count_leaves(tree(_, Left, Right), N) :- count_leaves(Left, N1), count_leaves(Right, N2), N is N1+N2, !.
