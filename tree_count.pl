% count(Tree, N) means that the tree Tree has N nodes
count(null, 0).
count(tree(_, Left, Right), N) :- count(Left, N1), count(Right, N2), N is N1+N2+1.
