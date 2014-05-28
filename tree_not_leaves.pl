% count_not_leaves(T, N) means that tree T has N nodes that do not count as leaves (have 1 or 2 children)
count_not_leaves(nil, 0).
count_not_leaves(tree(_, nil, nil), 0) :- !.
count_not_leaves(tree(_, Left, nil), N) :- count_not_leaves(Left, N1), N is N1+1, !.
count_not_leaves(tree(_, nil, Right), N) :- count_not_leaves(Right, N1), N is N1+1, !.
count_not_leaves(tree(_, Left, Right), N) :- count_not_leaves(Left, N1), count_not_leaves(Right, N2), N is N1+N2+1, !.
