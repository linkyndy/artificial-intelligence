% divisor(X, Y, D) means that D is the biggest divisor of X and Y
divisor(X, 0, X) :- !.
divisor(X, Y, D) :- Mod is X mod Y, divisor(Y, Mod, D).
