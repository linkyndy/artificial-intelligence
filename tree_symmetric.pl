% symmetric(Tree) checks whether the tree Tree is symmetric
symmetric(nil).
symmetric(tree(_, Left, Right)) :- mirror(Left, Right).

mirror(nil, nil) :- !.
mirror(t(_, L1, R1), t(_, L2, R2)) :- mirror(L1, R2), mirror(R1, L2), !.
