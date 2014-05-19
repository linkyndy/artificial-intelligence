% height(Tree, Height) means that Height is the height of Tree tree
height(null, 0).
height(tree(_, Left, Right), Height) :- height(Left, H1), height(Right, H2), Height is max(H1, H2)+1.
