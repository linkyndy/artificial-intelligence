% abs(X, Y) means that Y is the absolute value of X
abs(X, Y) :- Y is X, X>=0.
abs(X, Y) :- Y is -X, X<0.
