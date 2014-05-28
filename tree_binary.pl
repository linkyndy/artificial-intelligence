% binary(Tree) means that tree Tree is binary
binary(nil).
binary(tree(_, Left, Right)) :- binary(Left), binary(Right).
