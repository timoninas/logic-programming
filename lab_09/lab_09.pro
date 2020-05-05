
domains
	mlist = integer*.

predicates
	nondeterm count(mlist, integer).
	nondeterm sum(mlist, integer).
	nondeterm sumMod2(integer, mlist, integer).
	nondeterm evenNum(integer).

clauses
	count([], Count) :- Count = 0, !.
	count([_ | Tail], Count) :- count(Tail, TmpCount),
			 	   Count = TmpCount+1.
			 	   
	sum([], Sum) :- Sum = 0, !.
	sum([Head | Tail], Sum) :- sum(Tail, TmpSum),
			 	   Sum = TmpSum+Head.
			 	   
	evenNum(A) :-
    		B = A mod 2,
    		B = 0,
    		!.
			 	   
	sumMod2(_, [], Sum) :- Sum = 0, !.
	sumMod2(Index, [Head | Tail], Sum) :-
				       NewIndex = Index+1,
				       evenNum(Index),
				       sumMod2(NewIndex, Tail, TmpSum),
			 	       Sum = TmpSum+Head,
			 	       !.
	sumMod2(Index, [_ | Tail], Sum) :- NewIndex = Index+1, 
					   sumMod2(NewIndex, Tail, Sum), !.
	
goal
	%write("List[1, 2, 3, 4]: \n"),
	%count([1, 2, 3, 4], Count);
	%write("\nList[1, 2, 2, 3, 3]: \n"),
	%count([1, 2, 2, 3, 3], Count).
	
	%write("List[1, 2, 3, 4]: \n"),
	%sum([1, 2, 3, 4], Sum);
	%write("\nList[1, 2, 2, 3, 3]: \n"),
	%sum([1, 2, 2, 3, 3], Sum).
	
	write("Sum of even index numbers[1, 2, 3, 4, 5, 6, 7]: \n"),
	sumMod2(0, [1, 2, 3, 4, 5, 6, 7], SumMod2);
	write("\nSum of even index numbers[1, 0, 1, 0]: \n"),
	sumMod2(0, [1, 0, 1, 0], SumMod2).