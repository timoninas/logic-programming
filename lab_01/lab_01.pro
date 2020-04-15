domains 
	firstName = symbol.
	lastName = symbol.
	phone = integer.
	
predicates
	notice(firstName, lastName, phone)
	
clauses
	notice("Anton", "Timonin", 123).
	notice("Egor", "Timonin", 231).
	notice("Oleg", "Timonin", 321).
	notice("Alexey", "Vasykov", 234).
	notice("Dmitry", "Moscowsky", 423).
	
goal
	notice(FirstName, LastName, 123).

% Вывод
FirstName=Anton, LastName=Timonin
1 Solution