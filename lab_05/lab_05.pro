
domains
	lastname, phone, city, street = symbol.
	house, flat, price = integer.
	brand, color = symbol.
	bank = symbol.
	account, amount = integer.
	address = addres(city, street, house, flat).

predicates
	nondeterm phone_notice(lastname, phone, address).
	nondeterm car(lastname, city, brand, color, price).
	nondeterm bank_investors(lastname, city, bank, account, amount).
	
	nondeterm findUsingBrandColor(brand, color, lastname, city, phone, bank).

clauses
	phone_notice("Timonin", "7090898286725", addres("Moscow", "Sovetskaya", 2, 37)).
	phone_notice("Ibragimov", "7090898286725", addres("Vologda", "Vostochnaya", 5, 11)).
	phone_notice("Timonin", "434451374707", addres("neMoscow", "Central", 4, 37)).
	phone_notice("Sardyn", "88418172007714", addres("Orksk", "Zapandanya", 4, 33)).
	phone_notice("Savelko", "0180596669", addres("Archangelsk", "Central", 7, 64)).
	phone_notice("Foreman", "510435028126", addres("Orenburg", "Krygovaya", 4, 37)).
	phone_notice("Checkiki", "4104222849519", addres("Archangelsk", "Vostochnaya", 4, 23)).
	phone_notice("Laprival", "66013578651255", addres("Vologda", "Svetskaya", 2, 90)).
	phone_notice("Koverap", "5782027078", addres("Dnepr", "Krygovaya", 4, 73)).
	phone_notice("Kolopyn", "5562794360972", addres("Pripyat", "Zone", 1, 61)).
	phone_notice("Nebrogov", "79875467322", addres("Rytia", "Mainernce", 1, 22)).
	
	bank_investors("Timonin", "Moscow",  "VTB", 900, 1250).
	bank_investors("Timonin", "neMoscow", "SBERBANK", 2000, 13500).
	bank_investors("Koverap", "Dnepr", "TINKOFF", 2000, 3700).
	bank_investors("Koverap", "neDnepr", "SBERBANK", 2100, 3600).
	bank_investors("Foreman", "Orenburg", "SBERBANK", 1000, 1300).
	bank_investors("Sardyn", "Orksk", "TINKOFF",71000, 101).
	bank_investors("Kolopyn", "Pripyat", "VTB", 1000, 12).
	bank_investors("Laprival", "Vologda", "SBERBANK", 11000, 111).
	bank_investors("Joker", "Acrham", "TINKOFF", 100, 130).
	bank_investors("Laprival", "Vologda", "TINKOFF", 134000, 6000000).
	bank_investors("Ibragimov", "Vologda", "VTB", 10, 250).
	
	car("Timonin", "Moscow", "BMW", "white", 1000).
	car("Timonin", "Moscow", "ESKALATE", "black", 1000).
	car("Foreman", "Orenburg", "ESKALATE", "black", 1000).
	car("Orevsji", "Kikalami", "ESKALATE", "orange", 1000).
	car("Orevsji", "Vologda", "Ferrari", "lightgray", 1000).
	car("Joker", "Acrham", "Lamborgini", "purple", 1000).
	car("Orevsji", "Kikalami", "Ferrari", "white", 1000).
	car("Nebrogov", "World", "BMW", "black", 178000).
	car("Nebrogov",  "World", "Ferrari", "red", 210000).
	car("Ibragimov", "Vologda", "VELOSIPED", "red", 1000).
	
	
	% FOR Brand, Color FIND Lastname, City, Phone, Bank, 
	% where car owner is bank investor
	findUsingBrandColor(Brand, Color, Lastname, City, Phone, Bank) :-
		phone_notice(Lastname, Phone, _),
		car(Lastname, City, Brand, Color, _),
		bank_investors(Lastname, City, Bank, _, _).
goal
	findUsingBrandColor("VELOSIPED", "black", Lastname, City, Phone, Bank).