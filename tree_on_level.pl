% on_level(Tree, Level, Nodes) means that Nodes is a list containing all nodes in tree Tree that are within level Level
on_level(nil, _, []) :- !.
on_level(tree(Root, _, _), 1, [Root]) :- !.
on_level(tree(_, Left, Right), Level, Nodes) :- Level>1, Level1 is Level-1, on_level(Left, Level1, Nodes1), on_level(Right, Level1, Nodes2), append(Nodes1, Nodes2, Nodes), !.
