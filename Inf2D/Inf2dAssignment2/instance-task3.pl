% ---------------------------------------------------------------------
%  ----- Informatics 2D - 2011/12 - Second Assignment - Planning -----
% ---------------------------------------------------------------------
%
% Write here you matriculation number (only - your name is not needed)
% Matriculation Number: s1024819
%
%
% ------------------------- Problem Instance --------------------------
% This file is a template for a problem instance: the definition of an
% initial state and of a goal. 

% debug(on).	% need additional debug information at runtime?



% --- Load domain definitions from an external file -------------------

:- [domain-task3].		% Replace with the domain for this problem




% --- Definition of the initial state ---------------------------------
adjacent(loc1-1, loc1-2).
adjacent(loc1-2, loc1-1).
adjacent(loc1-2, loc1-3).
adjacent(loc1-3, loc1-2).
adjacent(loc1-3, loc1-4).
adjacent(loc1-4, loc1-3).
adjacent(loc1-1, loc2-1).
adjacent(loc2-1, loc1-1).
adjacent(loc1-2, loc2-2).
adjacent(loc2-2, loc1-2).
adjacent(loc1-3, loc2-3).
adjacent(loc2-3, loc1-3).
adjacent(loc1-4, loc2-4).
adjacent(loc2-4, loc1-4).
adjacent(loc2-1, loc2-2).
adjacent(loc2-2, loc2-1).
adjacent(loc2-2, loc2-3).
adjacent(loc2-3, loc2-2).
adjacent(loc2-3, loc2-4).
adjacent(loc2-4, loc2-3).
adjacent(loc2-1, loc3-1).
adjacent(loc3-1, loc2-1).
adjacent(loc2-2, loc3-2).
adjacent(loc3-2, loc2-2).
adjacent(loc2-3, loc3-3).
adjacent(loc3-3, loc2-3).
adjacent(loc3-1, loc3-2).
adjacent(loc3-2, loc3-1).
adjacent(loc3-2, loc3-3).
adjacent(loc3-3, loc3-2).

moveable(loc1-1, loc2-1, loc3-1).
moveable(loc3-1, loc2-1, loc1-1).
moveable(loc1-2, loc2-2, loc3-2).
moveable(loc3-2, loc2-2, loc1-2).
moveable(loc1-3, loc2-3, loc3-3).
moveable(loc3-3, loc2-3, loc1-3).
moveable(loc1-1, loc1-2, loc1-3).
moveable(loc1-3, loc1-2, loc1-1).
moveable(loc1-2, loc1-3, loc1-4).
moveable(loc1-4, loc1-3, loc1-2).
moveable(loc2-1, loc2-2, loc2-3).
moveable(loc2-3, loc2-2, loc2-1).
moveable(loc2-2, loc2-3, loc2-4).
moveable(loc2-4, loc2-3, loc2-2).
moveable(loc3-1, loc3-2, loc3-3).
moveable(loc3-3, loc3-2, loc3-1).

at(a, loc2-3, s0).
at(b, loc2-2, s0).
at(c, loc2-1, s0).

at(agent, loc3-2, s0).

empty(loc1-1, s0).
empty(loc3-1, s0).
empty(loc1-2, s0).
empty(loc1-3, s0).
empty(loc3-3, s0).
empty(loc1-4, s0).
empty(loc2-4, s0).


% --- Goal condition that the planner will try to reach ---------------

goal(S) :- (at(a, loc1-2, S); at(a, loc1-1, S);at(a, loc1-3, S)), (at(b, loc1-2, S); at(b, loc1-1, S);at(b, loc1-3, S)), (at(c, loc1-2, S); at(c, loc1-1, S);at(c, loc1-3, S)).


% ---------------------------------------------------------------------
% ---------------------------------------------------------------------
