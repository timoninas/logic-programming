
domains
	num, res = integer.
	n, f = integer.

predicates
	nondeterm fact(integer, integer).
	nondeterm fib(integer, integer).

clauses
	fact(0, Result) :- Result = 1,!.
	fact(N,F) :- N1 = N - 1, 
		     fact(N1,F1),
		     F=N*F1.
		     
		     
	fib(0, Result) :- Result = 0, !.
	fib(1, Result) :- Result = 1, !.
	fib(N, Result) :- N1 = N-1,
			  N2 = N-2,
			  fib(N1, N1Result),
			  fib(N2, N2Result),
			  Result = N1Result + N2Result.

	
goal
	%
	% Factorial
	%

	write("Factorial(3)\n"),
	fact(3, Result);
	
	write("\nFactorial(4)\n"),
	fact(4, Result);
	
	write("\nFactorial(5)\n"),
	fact(5, Result).
	
	%
	% Fibbonachi
	%
	
	write("Fibbonachi(4)\n"),
	fib(4, Result);
	
	write("\nFibbonachi(6)\n"),
	fib(6, Result);
	
	write("\nFibbonachi(8)\n"),
	fib(8, Result);
	
	write("\nFibbonachi(10)\n"),
	fib(10, Result);
	
	write("\n").