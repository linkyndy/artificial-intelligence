% pack_similar(L1, L2) means that list L2 contains elements from list L1, with same consecutive elements packed into sublists
pack_similar([], []).
pack_similar([Elem|RestL1], [NewL2|RestNewL2]) :- move_to(Elem, RestL1, NewL1, NewL2), pack_similar(NewL1, RestNewL2).

% move_to(Elem, L1, NewL1, NewL2) means that all occurances of Elem from L1 are moved to NewL2, with NewL1 being the resulted L1 list without Elem occurances
move_to(Elem, [], [], [Elem]).
move_to(Elem, [OtherElem|RestL1], [OtherElem|RestL1], [Elem]) :- Elem\=OtherElem.
move_to(Elem, [Elem|RestL1], NewL1, [Elem|RestNewL2]) :- move_to(Elem, RestL1, NewL1, RestNewL2).
