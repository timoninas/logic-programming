
domains
	mlist = integer*.

predicates
	nondeterm count(mlist, integer).
	

clauses
	count([], Count) :- Count = 0, !.
	count([_ | Tail], Count) :- count(Tail, TmpCount),
			 	   Count = TmpCount+1.
	
goal
	%write("List[1, 2, 3, 4]: \n"),
	%count([1, 2, 3, 4], Count).