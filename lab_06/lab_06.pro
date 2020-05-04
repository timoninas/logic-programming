
domains
	firstname, lastname = symbol.
	children, parent, predok = person(firstname, lastname). 

predicates
	nondeterm father(children, parent).
	nondeterm father(parent, predok).
	nondeterm mother(children, parent).
	nondeterm mother(parent, predok).
	
	nondeterm allGrandMa(children, predok).

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
				
goal
	allGrandMa(person("Anton", "Lomin"), Grandma).