
domains
	firstname, lastname = symbol.
	children, parent, predok = person(firstname, lastname). 

predicates
	nondeterm father(children, parent).
	nondeterm father(parent, predok).
	nondeterm mother(children, parent).
	nondeterm mother(parent, predok).
	
	nondeterm allGrandMa(children, predok).
	nondeterm allGrandDa(children, predok).
	nondeterm allGrand(children, predok).
	nondeterm mothersMama(children, predok).
	nondeterm mothersPapa(children, predok).
	nondeterm mothersMaPa(children, predok).

clauses
	father(person("Anton", "Lomin"), person("Sergio", "Lomin")).
	father(person("Sergio", "Lomin"), person("Gena", "Lomin")).
	father(person("Egor", "Lomin"), person("Sergio", "Lomin")).
	father(person("Evgeny", "Lomin"), person("Sergio", "Lomin")).
	father(person("Mir", "Lomina"), person("Evgeny", "Lomin")).
	father(person("Olga", "Lomina"), person("Sasha", "Spyi")).
	
	mother(person("Mira", "Lomina"), person("Valerya", "Lobor")).
	mother(person("Anton", "Lomin"), person("Olga", "Lomina")).
	mother(person("Evgeny", "Lomin"), person("Olga", "Lomina")).
	mother(person("Egor", "Lomin"), person("Olga", "Lomina")).
	mother(person("Sergio", "Lomin"), person("Valya", "Lomina")).
	mother(person("Olga", "Lomina"), person("Tamara", "Spyi")).
	
	allGrandMa(Children, Babushka) :- 
		father(Children, Father),
		mother(Father, Babushka).
		
	allGrandMa(Children, Babushka) :- 
		mother(Children, Mother),
		mother(Mother, Babushka).
		
	allGrandDa(Children, Dedushka) :-
		father(Children, Papa),
		father(Papa, Dedushka).
		
	allGrandDa(Children, Dedushka) :-
		mother(Children, Mama),
		father(Mama, Dedushka).
		
	allGrand(Children, Babushka) :-
		allGrandMa(Children, Babushka).
		
	allGrand(Children, Dedushka) :-
		allGrandDa(Children, Dedushka).
		
	mothersMama(Children, BabushkaForMa) :-
		mother(Children, Mama),
		mother(Mama, BabushkaForMa).
		
	mothersPapa(Children, DedushkaForMa) :-
		mother(Children, Mama),
		father(Mama, DedushkaForMa).
		
	mothersMaPa(Children, Babushka) :-
		mothersMama(Children, Babushka).
		
	mothersMaPa(Children, Dedushka) :-
		mothersPapa(Children, Dedushka).
		
				
goal
	%allGrandMa(person("Anton", "Lomin"), Grandma).
	%allGrandDa(person("Anton", "Lomin"), Dedushka).
	%allGrand(person("Anton", "Lomin"), GrandMaPa).
	%mothersMama(person("Anton", "Lomin"), BabushkaForMa).
	mothersMaPa(person("Anton", "Lomin"), GrandMaPaForMothersLine).
	