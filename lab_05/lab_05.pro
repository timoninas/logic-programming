
domains
	lastname, phone, city, street = symbol.
	house, flat, area, acres, price = integer.
	typeOfOwn, type, brand, color = symbol.
	bank = symbol.
	account, amount, sumPrice = integer.
	address = addres(city, street, house, flat).
	ownership = car(brand, color, price);
		    building(area, type, price);
		    plot(acres, type, price);
		    boat(brand, type, color, price).
		    

predicates
	nondeterm phone_notice(lastname, phone, address).
	nondeterm bank_investors(lastname, city, bank, account, amount).
	nondeterm owner(lastname, city, ownership).
	
	nondeterm allOwners(lastname, city, typeOfOwn, price).
	nondeterm allOwners(lastname, city, typeOfOwn).
	nondeterm priceCar(lastname, city, price).
	nondeterm priceBuilding(lastname, city, price).
	nondeterm pricePlot(lastname, city, price).
	nondeterm priceBoat(lastname, city, price).
	nondeterm summaryPrice(lastname, city, sumPrice).

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
	
	
	%owner(lastname, city, ownership)
	owner("Timonin", "Moscow", car("BMW", "red", 50000)).
	owner("Timonin", "Vologda", building(175, "Real", 125000)).
	owner("Timonin", "Moscow", building(175, "Real", 125000)).
	owner("Timonin", "Moscow", boat("BMX", "123", "Red", 1)).
	owner("Ibragimov", "Vologda", plot(200, "Real", 12342)).
	owner("Sardyn", "Orksk", building(213, "Unreal", 11111)).
	owner("Koverap", "Dnepr", boat("BMX", "123", "Red", 1290)).
	owner("Nebrogov", "Rytia", boat("KOL", "Real", "Green", 90000)).
	
	
	allOwners(Lastname, City, Ownership, Price) :- 
			owner(Lastname, City, car(_, _, Price)), Ownership = "Car".
	allOwners(Lastname, City, Ownership, Price) :- 
			owner(Lastname, City, building(_, _, Price)), Ownership = "Building".
	allOwners(Lastname, City, Ownership, Price) :- 
			owner(Lastname, City, plot(_, _, Price)), Ownership = "Plot".
	allOwners(Lastname, City, Ownership, Price) :- 
			owner(Lastname, City, boat(_, _, _, Price)), Ownership = "Boat".
			
	allOwners(Lastname, City, Ownership) :- 
			allOwners(Lastname, City, Ownership, _).
			
	priceCar(Lastname, City, Price) :- owner(Lastname, City, car(_, _, Price)),!.
	priceCar(_, _, 0).
	
	priceBuilding(Lastname, City, Price) :- owner(Lastname, City, building(_, _, Price)),!.
	priceBuilding(_, _, 0).
	
	pricePlot(Lastname, City, Price) :- owner(Lastname, City, plot(_, _, Price)),!.
	pricePlot(_, _, 0).

	priceBoat(Lastname, City, Price) :- owner(Lastname, City, boat(_, _, _, Price)),!.
	priceBoat(_, _, 0).
	
	summaryPrice(Lastname, City, SumPrice) :-
			priceCar(Lastname, City, CarPrice),
			priceBuilding(Lastname, City, BuildingPrice),
			pricePlot(Lastname, City, PlotPrice),
			priceBoat(Lastname, City, BoatPrice),
			SumPrice = CarPrice + BuildingPrice + PlotPrice + BoatPrice.
	
goal
	allOwners("Timonin", "Moscow", Ownership).
	
	%summaryPrice("Timonin", City, SumPrice).
	