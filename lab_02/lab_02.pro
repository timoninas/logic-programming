domains 
	firstName = symbol.
	lastName = symbol.
	group = integer.
	edu = symbol.
	averageMark = integer.

predicates
	nondeterm student(firstName, lastName, group, edu, averageMark).
	nondeterm educational(firstName, lastName, edu).
	nondeterm grpNedu(lastName, group, edu).
	nondeterm praviloEDU(firstName, lastName).
	nondeterm excellentPupil(firstName, lastName, averageMark).
	nondeterm badPup(firstName, lastName, averageMark).

clauses
	student("Anton", "Timonin", 2, "BMSTU", 2).
	student("Egor", "Timonin", 2, "BMSTU", 2).
	student("Vasya", "Bobkov", 1, "BMSTU", 3).
	student("Oleg", "Gibadulin", 2, "BMSTU", 4).
	student("Sanya", "Stepanov", 3, "BMSTU", 5).
	student("Ivan", "Petrov", 1, "BMSTU", 3).
	student("Jenya", "Jekajio", 13, "MGSU", 3).
	student("Elizaveta", "Boyarko", 3, "MGSU", 5).
	student("Petr", "Ivanov", 1, "MSU", 3).
	student("K", "S", 1, "MSU", 5).
	student("Kek", "Lol", 14, "HSE", 3).
	student("Andrey", "Rodin", 4, "MEPI", 1).
	
	% FACTS
	educational(FirstName, LastName, Edu) :- student(FirstName, LastName, _, Edu, _).
	grpNedu(LastName, Group, Edu) :- student(_, LastName, Group, Edu, _).
	excellentPupil(FirstName, LastName, AverageMark) :- student(FirstName, LastName, _, _, AverageMark).
	
	% PRAVILA
	praviloEDU(FirstName, LastName) :- student(FirstName, LastName, _, Edu, _), Edu = "BMSTU".
	badPup(FirstName, LastName, AverageMark) :- student(FirstName, LastName, _, _, AverageMark), AverageMark = 2; 
						    student(FirstName, LastName, _, _, AverageMark), AverageMark = 1.

goal
	% Facts: Check institute
	%educational(FirstName, LastName, "BMSTU").
	
	% Facts: Check group and institute
	%grpNedu(LastName, 2, "BMSTU").
	
	% Facts: Check excellent pupils
	%excellentPupil(FirstName, LastName, 5).
	
	% Pravila: Check institute
	%praviloEDU(FirstName, LastName).
	
	% Pravila: Check bad pupils
	badPup(FirstName, LastName, AverageMark).
