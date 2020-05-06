
domains
	i = integer
	mlist = i*.

predicates
	nondeterm newListAboveNum(mlist, integer, mlist).
	nondeterm isAbove(integer, integer).
	
	nondeterm newListEvenPos(integer, mlist, mlist).
	nondeterm oddp(integer).
	
	nondeterm deleteNumInList(mlist, integer, mlist).
	
	nondeterm removeRepeatedElements(integer ,mlist, mlist).
	nondeterm makeSet(mlist, mlist).

clauses	
	%append([], _).
	%append([Head|Tail],[Head|NewTail]) :- isAbove(Head, 3), append(Tail, NewTail), !.
	%append([_|Tail],[_|NewTail]) :-  append(Tail, NewTail), !.
	
	isAbove(CompNum, Num) :- CompNum > Num, !.
	
	newListAboveNum([], _, Result):-Result = [],!.
	newListAboveNum([Head|Tail], Num, [Head|NewTail]) :- isAbove(Head, Num), 
							     newListAboveNum(Tail, Num, NewTail), !.
	newListAboveNum([_|Tail], Num, NewTail) :-  newListAboveNum(Tail, Num, NewTail), !.
	
	
	oddp(A) :-
    		B = A mod 2, B = 1,  !;
    		B = A mod 2, B = -1, !.
	
	newListEvenPos(_, [], Result):-Result = [],!.
	newListEvenPos(Index, [Head|Tail], [Head|NewTail]) :- oddp(Index), 
							      NewIndex = Index+1, 
							      newListEvenPos(NewIndex, Tail, NewTail), 
							      !.
							      
	newListEvenPos(Index, [_|Tail], NewTail) :-  NewIndex = Index+1, 
						     newListEvenPos(NewIndex, Tail, NewTail), 
						     !.
	
	
	deleteNumInList([], _, Result):-Result = [],!.
	deleteNumInList([Head|Tail], Num, [Head|NewTail]) :- Head <> Num, 
							     deleteNumInList(Tail, Num, NewTail), !.
							     
	deleteNumInList([_|Tail], Num, NewTail) :-  deleteNumInList(Tail, Num, NewTail), !.
	
	removeRepeatedElements(_,[],[]).
	removeRepeatedElements(ElemSet,[ElemSet | Tail], NewSet) :- 
				removeRepeatedElements(ElemSet, Tail, NewSet).
				
	removeRepeatedElements(ElemSet, [CheckElem | Tail], 
					[CheckElem | NewTail]) :- 
							ElemSet<>CheckElem, 
							removeRepeatedElements(ElemSet, Tail, NewTail).
 
	makeSet([], Result):- Result = [], !.
	makeSet([Head|Tail],[Head| NewTail]) :- removeRepeatedElements(Head, Tail, Set), 
					        makeSet(Set, NewTail).
goal
	write("List[1, 2, 3, 4, 5, 6, 1, 2, 3, 7, 9, 10, 100] with nums above 3: \n"),
	newListAboveNum([1, 2, 3, 4, 5, 6, 1, 2, 3, 7, 9, 10, 100], 3, List);
	write("\nList[1, 3, 2, 1, 1, 1, 3, 3, 3, 2, 2, 2] with nums above 2: \n"),
	newListAboveNum([1, 3, 2, 1, 1, 1, 3, 3, 3, 2, 2, 2], 2, List).
	
	write("List[[1, 2, 3, 4, 5, 6, 7, 8] with oddp Index: \n"),
	newListEvenPos(0, [1, 2, 3, 4, 5, 6, 7, 8], List);
	write("\nList[0, 1, 0, 1] with oddp Index: \n"),
	newListEvenPos(0, [0, 1, 0, 1], List).
	
	write("Delete 3 in List[3, 3, 3] \n"),
	deleteNumInList([3, 3, 3], 3, List);
	write("\nDelete 0 in List[1, 0, 2, 0, 0, 3, 4] \n"),
	deleteNumInList([1, 0, 2, 0, 0, 3, 4], 0, List).
	
	write("Make set of List[5, 5, 5] \n"),
	makeSet([5, 5, 5], Result);
	write("\nMake set of List[3, 1, 1, 2, 1, 2] \n"),
	makeSet([3, 1, 1, 2, 1, 2], Result).
	
