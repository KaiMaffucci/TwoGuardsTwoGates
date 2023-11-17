% general rules of thumb:
% when referring to guards, true means they are telling the truth, and false means they are lying.
% when referring to doors, true means you have been led to heaven, false means you have been led to hell.

% we choose guard 1 to be the truthful guard (and thus the other guard has to lie)
g1 :- true.
g2 :- false.
% make sure they are true or false (booleans) (dont really need to do this since prolog does it already)
g1_chk :- g1 ; \+ gl.
g2_chk :- g2 ; \+ g2.
% make sure they are booleans and they are different
gs_chk :- g1_chk, g2_chk, dif(g1,g2).

% do the same thing for the doors that we did for the guards
d1 :- true.
d2 :- false.
% make sure they are booleans (dont really need to do this since prolog does it already)
d1_chk :- d1 ; \+ d1.
d2_chk :- d2 ; \+ d2.
% make sure they are booleans and they are different
ds_chk :- d1_chk, d2_chk, dif(d1,d2).

% guard 1 will give heaven, guard 2 will give hell (because guard 2 being false is true)
heaven :- g1, d1.
hell :- \+ (\+ g2, \+ d2).

% asking a guard what the other would say will result in them pointing you to hell no matter what.
% you can test this by seeing if each of these predicates is equal to false.
% this works because what one guard will say will always be the opposite of what the other would.
g1_res :- g1, g2.
g2_res :- g2, g1.
% predicate to check all necessary predicates to determine if hell is always the option
gs_resps_are_hell :- \+ g1_res, \+ g2_res, \+ hell.

% if we want the correct door, then we must choose the opposite of the door that either of the guards would point to. 
% this predicate being true proves that no matter who you ask, they will point you to the opposite of heaven.
correct_door :- \+ g1_res, \+ g2_res.
