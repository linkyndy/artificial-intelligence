% father(X, Y) means that X is the father of Y
father(john, kay).
father(john, ben).
father(bill, john).
father(bill, oliver).
father(mark, bill).
father(clint, mark).
father(clint, dan).
father(barb, clint).

% child(X, Y) means that X is the child of Y
child(X, Y) :- father(Y, X).

% brother(X, Y) means that X is the brother of Y
brother(X, Y) :- father(Z, X), father(Z, Y), not(X=Y).

% nephew(X< Y) means that X is the nephew of Y
nephew(X, Y) :- father(Z, X), brother(Z, Y).

% grandchild(X, Y) means that X is the grandchild of Y
grandchild(X, Y) :- father(Z, X), father(Y, Z).

% predecessor(X, Y) means that X is the predecessor of Y
predecessor(X, Y) :- father(X, Y).
predecessor(X, Y) :- father(Z, Y), predecessor(X, Z).
