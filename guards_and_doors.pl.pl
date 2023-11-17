% helper predicates
and(A,B) :- A, B.
or(A,B) :- A ; B.
xor(A,B) :- or(A,B), \+ and(A,B).
not(A) :- \+ A.

% we choose guard 1 to be the truthful guard (and thus the other guard has to lie)
g1() :- true.
g2() :- false.
% make sure they are booleans (dont really need to do this since prolog does it already)
g1_chk() :- g1() ; \+ gl().
g2_chk() :- g2() ; \+ g2().
% make sure they are booleans and they are different
gs_chk() :- g1_chk(), g2_chk(), xor(g1(),g2()).

% do the same thing for the doors that we did for the guards
d1() :- true.
d2() :- false.
% make sure they are booleans (dont really need to do this since prolog does it already)
d1_chk() :- d1() ; not(dl()).
d2_chk() :- d2() ; not(d2()).
% make sure they are booleans and they are different
ds_chk() :- d1_chk(), d2_chk(), xor(d1(),d2()).

% guard 1 will give heaven, guard 2 will give hell (because guard 2 being false is true)
heaven() :- g1(), d1().
hell() :- not(and(not(g2()), not(d2()))).

% asking a guard what the other would say will result in them pointing you to hell no matter what. you can test this by seeing if each of these predicates is equal to false. this works because what one guard will say will always be the opposite of what the other would.
g1_res() :- g1(), g2().
g2_res() :- g2(), g1().
% predicate to check all necessary predicates to determine if hell is always the option (\+ could work in place of not in this instance)
gs_resps_are_hell() :- not(g1_res()), not(g2_res()), not(hell()).

% if we want the correct door, then we must choose the opposite of the door that either of the guards would point to. 
% this predicate being true proves that no matter who you ask, they will point you to the opposite of heaven.
correct_door() :- (not(g1_res())) , (not(g2_res())).