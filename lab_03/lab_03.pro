
domains
	lastname, phone, city, street = symbol.
	house, flat, price = integer.
	brand, color = symbol.
	bank = symbol.
	account, amount = integer.
	address = addres(city, street, house, flat).

predicates
	%nondeterm address(city, street, house, flat).
	nondeterm phone_notice(lastname, phone, address).
	%nondeterm car(lastname, brand, color, price).
	%nondeterm bank_investors(lastname, bank, account, amount).
	
	nondeterm all_phone_notice(lastname, phone, city, street, house, flat).

clauses
	phone_notice("Timonin", "12332523", addres("Moscow", "Schelkovo", 4, 37)).
	phone_notice("Nebrogov", "79875467322", addres("Rytia", "Mainernce", 1, 22)).
	
	all_phone_notice(Lastname, Phone, City, Street, House, Flat) :- 
		phone_notice(Lastname, Phone, addres(City, Street, House, Flat)).
goal
	all_phone_notice(Lastname, Phone, City, Street, House, Flat).