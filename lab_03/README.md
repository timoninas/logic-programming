
## Факт 1

```Prolog
forphone(Lastname, Brand, Price).

forphone(Lastname, Brand, Price) :- 
			phone_notice(Lastname, _, _), 
			car(Lastname, _, Brand, _, Price).
```

```Console
astname=Timonin, Brand=BMW, Price=1000
Lastname=Timonin, Brand=ESKALATE, Price=1000
Lastname=Timonin, Brand=BMW, Price=1000
Lastname=Timonin, Brand=ESKALATE, Price=1000
Lastname=Ibragimov, Brand=Ferrari, Price=1000
Lastname=Foreman, Brand=VELOSIPED, Price=1000
Lastname=Nebrogov, Brand=BMW, Price=178000
Lastname=Nebrogov, Brand=Ferrari, Price=210000
8 Solutions
```


## Факт 2

```Prolog
onlybrand(Brand).

onlybrand(Brand) :- forphone(_, Brand, _).
```

```Console
Brand=BMW
Brand=ESKALATE
Brand=BMW
Brand=ESKALATE
Brand=Ferrari
Brand=VELOSIPED
Brand=BMW
Brand=Ferrari
8 Solutions
```


## Факт 3

```Prolog
lookfor_streetbank(Street, Bank, Phone).

lookfor_streetbank(Street, Bank, Phone) :- 
			phone_notice(Lastname, Phone, addres(City, Street, _, _)),
			bank_investors(Lastname, City, Bank, _, _).
```

```Console
Street=Sovetskaya, Bank=VTB, Phone=7090898286725
Street=Central, Bank=SBERBANK, Phone=434451374707
Street=Vostochnaya, Bank=VTB, Phone=88887860627
Street=Zapandanya, Bank=TINKOFF, Phone=88418172007714
Street=Krygovaya, Bank=SBERBANK, Phone=510435028126
Street=Svetskaya, Bank=SBERBANK, Phone=66013578651255
Street=Svetskaya, Bank=TINKOFF, Phone=66013578651255
Street=Krygovaya, Bank=TINKOFF, Phone=5782027078
Street=Zone, Bank=VTB, Phone=5562794360972
9 Solutions
```
