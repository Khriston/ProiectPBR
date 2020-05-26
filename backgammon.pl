% board look :[p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,nr_piese_juc1,nr_piese_juc2,nr_piese_luate_juc1,nr_piese_luate_juc2,tipmutare]
% Newboard = [2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,2,15,15,0,0,0].

win(Board, 1) :- player1win(Board, 1).
win(Board, 2) :- player2win(Board, 2).

player1win(Board, 1) :- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,0,_,0,_,_].
player2win(Board, 2) :- Board = [_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,_,0,_,0,_].

display([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29]) :- write([A12,A11,A10,A9,A8,A7,A6,A5,A4,A3,A2,A1]),nl,write([A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24]),nl,
 write([A25,A26,A27,A28,A29]),nl,nl.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     1,2,+,1, 
     [A1N,A2N,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A1N is A1 - 1,
    A2N is A2 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     12,15,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A12N is A12 - 1,
    A15N is A15 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     15,17,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15N,A16,A17N,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A15N is A15 - 1,
    A17N is A17 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     24,20,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20N,A21,A22,A23,A24N,A25,A26,A27,A28,A29N])
 :-
    A24N is A24 + 1,
    A20N is A20 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     13,9,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9N,A10,A11,A12,A13N,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A13N is A13 + 1,
    A9N is A9 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     1,4,+,1, 
     [A1N,A2,A3,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A1N is A1 - 1,
    A4N is A4 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     1,3,+,1, 
     [A1N,A2,A3N,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A1N is A1 - 1,
    A3N is A3 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,4,-,2, 
     [A1,A2,A3,A4N,A5,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A6N is A6 + 1,
    A4N is A4 - 2,
    A27N is A27 + 1,
    A29N is -1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     4,3,-,2, 
     [A1,A2,A3N,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A4N is A4 + 1,
    A3N is A3 - 2,
    A27N is A27 + 1,
    A29N is -1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,2,+,1, 
     [A1,A2N,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A2N is A2 + 1,
    A27N is A27 -1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,1,+,1, 
     [A1N,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A1N is A1 + 1,
    A27N is A27 -1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     9,4,+,2, 
     [A1,A2,A3,A4N,A5,A6,A7,A8,A9N,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A9N is A9 + 1,
    A4N is A4 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     4,3,+,2, 
     [A1,A2,A3N,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A4N is A4 + 1,
    A3N is A3 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     2,7,+,1, 
     [A1,A2N,A3,A4,A5,A6,A7N,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A2N is A2 - 1,
    A7N is A7 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     7,9,-,1, 
     [A1,A2,A3,A4,A5,A6,A7N,A8,A9N,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28N,A29N])
 :-
    A7N is A7 - 1,
    A9N is A9 + 1,
    A28N is A28 +1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,22,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22N,A23,A24,A25,A26,A27,A28N,A29N])
 :-
    A28N is A28 - 1,
    A22N is A22 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     22,20,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20N,A21,A22N,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A22N is A22 + 1,
    A20N is A20 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     9,14,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9N,A10,A11,A12,A13,A14N,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A9N is A9 - 1,
    A14N is A14 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     12,14,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14N,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A12N is A12 - 1,
    A14N is A14 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     20,15,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15N,A16,A17,A18,A19,A20N,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A20N is A20 + 1,
    A15N is A15 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     15,10,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A15N is A15 + 1,
    A10N is A10 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,1,-,2, 
     [A1N,A2,A3,A4,A5,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A6N is A6 + 1,
    A1N is A1 - 2,
    A27N is A27 +1,
    A29N is -1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,1,+,2, 
     [A1N,A2,A3,A4,A5,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A6N is A6 + 1,
    A1N is A1 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,4,+,1, 
     [A1,A2,A3,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A27N is A27 - 1,
    A4N is A4 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     4,5,+,1, 
     [A1,A2,A3,A4N,A5N,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A4N is A4 - 1,
    A5N is A5 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     10,4,+,2, 
     [A1,A2,A3,A4N,A5,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A10N is A10 + 1,
    A4N is A4 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     8,4,+,2, 
     [A1,A2,A3,A4N,A5,A6,A7,A8N,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A8N is A8 + 1,
    A4N is A4 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     12,16,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14,A15,A16N,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A12N is A12 - 1,
    A16N is A16 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     16,15,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15N,A16N,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A16N is A16 - 1,
    A15N is A15 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     13,10,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10N,A11,A12,A13N,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A13N is A13 + 1,
    A10N is A10 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     8,5,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7,A8N,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A8N is A8 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     8,5,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7,A8N,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A8N is A8 + 1,
    A5N is A5 - 2,
    A27N is A27 +1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     10,5,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A10N is A10 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     10,6,+,2, 
     [A1,A2,A3,A4,A5,A6N,A7,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A10N is A10 + 1,
    A6N is A6 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     20,15,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15N,A16,A17,A18,A19,A20N,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A20N is A20 + 1,
    A15N is A15 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     15,10,+,2, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A15N is A15 + 1,
    A10N is A10 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     13,7,+,2, 
     [A1,A2,A3,A4,A5,A6,A7N,A8,A9,A10,A11,A12,A13N,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A13N is A13 + 1,
    A7N is A7 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     7,5,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7N,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A7N is A7 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,2,+,1, 
     [A1,A2N,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A27N is A27 - 1,
    A2N is A2 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     17,20,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17N,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A17N is A17 - 1,
    A20N is A20 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     5,4,+,2, 
     [A1,A2,A3,A4N,A5N,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A5N is A5 + 1,
    A4N is A4 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     4,3,+,2, 
     [A1,A2,A3N,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A4N is A4 + 1,
    A3N is A3 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     3,2,-,2, 
     [A1,A2N,A3N,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A3N is A3 + 1,
    A2N is A2 - 2,
    A27N is A27 +1,
    A29N is -1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     10,5,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A10N is A10 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     5,2,+,2, 
     [A1,A2N,A3,A4,A5N,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A5N is A5 + 1,
    A2N is A2 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     10,7,+,2, 
     [A1,A2,A3,A4,A5,A6,A7N,A8,A9,A10N,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A10N is A10 + 1,
    A7N is A7 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     7,6,+,2, 
     [A1,A2,A3,A4,A5,A6N,A7N,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A7N is A7 + 1,
    A6N is A6 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,5,+,2, 
     [A1,A2,A3,A4,A5N,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A6N is A6 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     4,0,+,2, 
     [A1,A2,A3,A4N,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A4N is A4 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,0,+,2, 
     [A1,A2,A3,A4,A5,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A6N is A6 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     5,3,+,2, 
     [A1,A2,A3N,A4,A5N,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A5N is A5 + 1,
    A3N is A3 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,5,+,2, 
     [A1,A2,A3,A4,A5N,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A6N is A6 + 1,
    A5N is A5 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     25,6,+,1, 
     [A1,A2,A3,A4,A5,A6N,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27N,A28,A29N])
 :-
    A27N is A27 - 1,
    A6N is A6 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     12,13,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13N,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A12N is A12 - 1,
    A13N is A13 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     5,0,+,2, 
     [A1,A2,A3,A4,A5N,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A5N is A5 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     3,0,+,2, 
     [A1,A2,A3N,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A3N is A3 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     6,9,+,1, 
     [A1,A2,A3,A4,A5,A6N,A7,A8,A9N,A10,A1,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A6N is A6 - 1,
    A9N is A9 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     14,19,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14N,A15,A16,A17,A18,A19N,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A14N is A14 - 1,
    A19N is A19 + 1,
    A29N is 1.


move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     1,0,+,2, 
     [A1N,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A1N is A1 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     9,12,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9N,A10,A11,A12N,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A9N is A9 - 1,
    A12N is A12 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     12,15,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12N,A13,A14,A15N,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A12N is A12 - 1,
    A15N is A15 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     17,20,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17N,A18,A19,A20N,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A17N is A17 - 1,
    A20N is A20 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     2,1,+,2, 
     [A1N,A2N,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A2N is A2 + 1,
    A1N is A1 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     13,19,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13N,A14,A15,A16,A17,A18,A19N,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A13N is A13 - 1,
    A19N is A19 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     15,19,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15N,A16,A17,A18,A19N,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A15N is A15 - 1,
    A19N is A19 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     14,19,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14N,A15,A16,A17,A18,A19N,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A14N is A14 - 1,
    A19N is A19 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     17,20,+,1, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17N,A18,A19,A20N,A21,A22,A23,A24,A25,A26,A27,A28,A29N])
 :-
    A17N is A17 - 1,
    A20N is A20 + 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     2,0,+,2, 
     [A1,A2N,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26N,A27,A28,A29N])
 :-
    A2N is A2 + 1,
    A26N is A26 - 1,
    A29N is 1.

move([A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,A26,A27,A28,A29],
     5,5,-,5, 
     [A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15,A16,A17,A18,A19,A20,A21,A22,A23,A24,A25,0,A27,0,A29]).


playo :- playfrom([2,0,0,0,0,-5,0,-3,0,0,0,5,-5,0,0,0,3,0,5,0,0,0,0,-2,15,15,0,0,0]).
playfrom(Board) :- win(Board, 1), write('Player1 win').
playfrom(Board) :- win(Board, 2), write('Player2 win').
playfrom(Board) :- read(Poz1),read(Poz2),read(Move),read(Player),
  display(Board),
  move(Board,Poz1,Poz2,Move,Player,Newboard), 
  display(Newboard),
  playfrom(Newboard).