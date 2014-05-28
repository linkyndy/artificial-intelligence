% reverse(L, R) means that R is list L reversed
reverse(L, R) :- aux_reverse(L, R, []).

aux_reverse([], Aux, Aux).
aux_reverse([LH|LT], R, Aux) :- aux_reverse(LT, R, [LH|Aux]).
