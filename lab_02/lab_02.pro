domains 
	firstName = symbol.
	lastName = symbol.
	group = integer.
	edu = symbol.
	district, grade, condition = symbol.

predicates
	nondeterm student(firstName, lastName, group, edu).
	nondeterm educational(firstName, lastName, edu).
	nondeterm grpNedu(lastName, group, edu).
	nondeterm praviloEDU(firstName, lastName).

clauses
	student("Anton", "Timonin", 2, "BMSTU").
	student("Egor", "Timonin", 2, "BMSTU").
	student("Vasya", "Bobkov", 1, "BMSTU").
	student("Oleg", "Gibadulin", 2, "BMSTU").
	student("Sanya", "Stepanov", 3, "BMSTU").
	student("Ivan", "Petrov", 1, "BMSTU").
	student("Jenya", "Jekajio", 13, "MGSU").
	student("Elizaveta", "Boyarko", 3, "MGSU").
	student("Petr", "Ivanov", 1, "MSU").
	student("K", "S", 1, "MSU").
	student("K", "S", 1, "MSU").
	student("Kek", "Lol", 14, "HSE").
	student("Andrey", "Rodin", 4, "MEPI").
	
	% FACTS
	educational(FirstName, LastName, Edu) :- student(FirstName, LastName, _, Edu).
	grpNedu(LastName, Group, Edu) :- student(_, LastName, Group, Edu).
	
	% PRAVILA
	praviloEDU(FirstName, LastName) :- student(FirstName, LastName, _, Edu), Edu = "BMSTU".

goal
	% Facts: Check institute
	educational(FirstName, LastName, "BMSTU").
	
	% Facts: Check group and institute
	grpNedu(LastName, 2, "BMSTU").
	
	% Pravila: Check institute
	praviloEDU(FirstName, LastName).