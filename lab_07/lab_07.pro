
domains
	num1, num2, num3, max = integer.

predicates
	nondeterm maxOf2(num1, num2, max).
	nondeterm maxOf2c(num1, num2, max).
	
	nondeterm maxOf3(num1, num2, num3, max).
	nondeterm maxOf3c(num1, num2, num3,  max).

clauses
	% Bez otsechenya dlya 2 chisel
	maxOf2(Num1, Num2, Max) :- 
			Num1 > Num2, Max = Num1.
	maxOf2(Num1, Num2, Max) :- 
			Num1 <= Num2, Max = Num2.
			
			
	% S otsecheniem dlya 2 chisel
	maxOf2c(Num1, Num2, Max) :- 
			Num1 > Num2, Max = Num1, !.
	maxOf2c(_, Num2, Max) :- 
			Max = Num2.
			
	
	% Bez otsechenya dlya 3 chisel
	maxOf3(Num1, Num2, Num3, Max) :- 
			Num1 >= Num2, Num1 >= Num3, Max = Num1.
	maxOf3(Num1, Num2, Num3, Max) :- 
			Num2 >= Num1, Num2 >= Num3, Max = Num2.
	maxOf3(Num1, Num2, Num3, Max) :- 
			Num3 >= Num1, Num3 >= Num2, Max = Num3.
			
			
	% S otsecheniem dlya 3 chisel
	maxOf3c(Num1, Num2, Num3, Max) :- 
			Num1 >= Num2, Num1 >= Num3, Max = Num1, !.
	maxOf3c(_, Num2, Num3, Max) :- 
			Num2 >= Num3, Max = Num2, !.
	maxOf3c(_, _, Num3, Max) :- 
			Max = Num3.
	
goal
	write("Max2 s otsecheniem\n"),
	write("max(2, 1): "),
	maxOf2c(2, 1, Max);
	
	write("max(5, 10): "),
	maxOf2c(5, 10, Max);
	
	write("max(5, 10): "),
	maxOf2c(5, 10, Max);
	
	write("\n\nMax2 bez otsechenya\n"),
	write("max(3, 2): "),
	maxOf2(3, 2, Max);
	
	write("max(21, -21): "),
	maxOf2(21, -21, Max);
	
	write("max(6, 11): "),
	maxOf2(6, 11, Max).
	
	%
	% FOR 3 NUMBERS
	%
	
	write("Max3 s otsecheniem\n"),
	write("max(2, 1, 9): "),
	maxOf3c(2, 1, 9, Max);
	
	write("max(5, 10, 5): "),
	maxOf3c(5, 10, 5, Max);
	
	write("max(10, 5, 1): "),
	maxOf3c(10, 5, 1, Max);
	
	write("\n\nMax3 bez otsechenya\n"),
	write("max(3, 2, 2): "),
	maxOf3(3, 2, 2, Max);
	
	write("max(21, -21, 0): "),
	maxOf3(21, -21, 0, Max);
	
	write("max(6, 11, 19): "),
	maxOf3(6, 11, 19, Max).
	
	
	
	