flatten2([], []) :- !.
flatten2([H|T], FlatL) :-
    !,
    flatten2(H, FlatH),
    flatten2(T, FlatT),
    append(FlatH, FlatT, FlatL).
flatten2(L, [L]).
