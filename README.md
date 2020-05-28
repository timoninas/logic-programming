![Language](https://img.shields.io/badge/Language-Prolog-79414F)
![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)

# Логическое программирование; МГТУ; 6 семестр 🤙

## Лабораторные работы по Prolog



| :1234: | Описание | Код | Отчет | :information_source: |
| --- | --- | --- | --- | --- |
| :one: | Разобраться со средой Visual Prolog | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_01/lab_01.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_01/report/lab_01.pdf) | :white_check_mark: |
| :two: | Создать базу знаний студентов с помощью фактов, правил| [Код](https://github.com/timoninas/logic-programming/blob/master/lab_02/lab_02.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_02/report/lab_02.pdf) | :white_check_mark: |
| :three: | Создать базу знаний: записи, владельцы машин, счета в банке | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_03/lab_03.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_03/report/lab_03.pdf) | :white_check_mark: |
| :four: | Использование конъюнктивного правила и простого вопроса | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_04/lab_04.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_04/report/lab_04.pdf) | :white_check_mark: |
| :five: | Создание и использование вариативных типов данных | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_05/lab_05.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_05/lab_05.pdf) | :white_check_mark: |
| :six: | Использование правил в программе на Prolog | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_06/lab_06.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_06/lab_06.pdf) | :white_check_mark: |
| :seven: | Формирование эффективных программ на Prolog | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_07/lab_07.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_07/lab_07.pdf) | :white_check_mark: |
| :eight: | Рекурсия на Prolog | [Код](https://github.com/timoninas/logic-programming/blob/master/lab_08/lab_08.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_08/lab_08.pdf) | :white_check_mark: |
| :nine: | Обработка списков на Prolog| [Код](https://github.com/timoninas/logic-programming/blob/master/lab_09/lab_09.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_09/lab_09.pdf) | :white_check_mark: |
| :zero: | Формирование и модификация списков на Prolog| [Код](https://github.com/timoninas/logic-programming/blob/master/lab_10/lab_10.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_10/lab_10.pdf) | :white_check_mark: |




## Обучение


**p(X) :- r(X). значит: предикат p(X) будет успешен, если успешен предикат r(X)**

____

```Prolog
q(7). q(3). q(2).
r(8). r(5).
пара(X,Y) :- q(X), r(Y), X+Y>10, write(X,Y), nl, fail; succeed.
```
**Перебор значений в множестве Q = {7, 3, 2} и R = {8, 5}. Когда найдется значение X+Y>10, 
тогда пара выведется на экран, перейдет на новую строку, а предикат fail
откатывает назад - к предикату r(Y)**

**Предикат - succeed всегда успешен, поэтому в 
случае неуспеха в поиске пар чисел больше десяти, поиск пар не прервется, а 
сработает succeed**

____
