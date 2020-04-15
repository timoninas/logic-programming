# Тестирование программы

## Факт 1

Функция ищет людей c институтом BMSTU

```Prolog
educational(FirstName, LastName, "BMSTU").
```

```Console
FirstName=Anton, LastName=Timonin
FirstName=Egor, LastName=Timonin
FirstName=Vasya, LastName=Bobkov
FirstName=Oleg, LastName=Gibadulin
FirstName=Sanya, LastName=Stepanov
FirstName=Ivan, LastName=Petrov
6 Solutions
```

## Факт 2

Функция ищет людей из вторых групп

```Prolog
grpNedu(LastName, 2, "BMSTU").
```

```Console
LastName=Timonin
LastName=Gibadulin
3 Solutions
```

## Факт 3

Функция ищет отличников

```Prolog
excellentPupil(FirstName, LastName, 5).
```

```Console
FirstName=Sanya, LastName=Stepanov
FirstName=Elizaveta, LastName=Boyarko
FirstName=K, LastName=S
3 Solutions
```

## Правило 1

Функция ищет людей c институтом BMSTU

```Prolog
praviloEDU(FirstName, LastName).
```

```Console
FirstName=Anton, LastName=Timonin
FirstName=Egor, LastName=Timonin
FirstName=Vasya, LastName=Bobkov
FirstName=Oleg, LastName=Gibadulin
FirstName=Sanya, LastName=Stepanov
FirstName=Ivan, LastName=Petrov
6 Solutions
```

## Правило 2

Функция ищет плохих учеников

```Prolog
badPup(FirstName, LastName, AverageMark).
```

```Console
FirstName=Anton, LastName=Timonin, AverageMark=2
FirstName=Egor, LastName=Timonin, AverageMark=2
FirstName=Andrey, LastName=Rodin, AverageMark=1
3 Solutions
```
