
clone(X,X1):-X1 is X.
printt(0, _) :- !.
printt(_, []).
printt([A,B,C,D|T],A1,B1,C1,D1) :- A1 is A , B1 is B, C1 is C ,D1 is D.
delete([_|Tail], Tail).
main :-    
		Lines="1,2,+,1,5,5,-,5,1,1,1,1,1,1,1,1,",
        split_string(Lines, ",", "", L),
		printt(L,A,B,C,D),
    char_code(A1, A),
    char_code(B1, B),
    char_code(C1, C),
    char_code(D1, D),
    write(A1),
    write(B1),
    write(C1),
    write(D1),
	delete(L,L1),delete(L1,L2),delete(L2,L3),delete(L3,L4),
    write(L1),
    write(L2),
    write(L3),
    write(L4),
    clone(L,L4),
    delete(L,L1),delete(L1,L2),delete(L2,L3),delete(L3,L4),
    write(L1),
    write(L2),
    write(L3),
    write(L4).
    
    
