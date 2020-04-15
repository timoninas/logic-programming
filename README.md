![Language](https://img.shields.io/badge/Language-Prolog-79414F)
![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)

# Логическое программирование; МГТУ; 6 семестр 

## Лабораторные работы по Prolog


| :1234: | Описание | Код | Отчет | :information_source: |
| --- | --- | --- | --- | --- |
| :one: | Разобраться со средой Visual Prolog | Код | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_01/report/lab_01.pdf) | :negative_squared_cross_mark: |
| :two: | Создать базу знаний студентов с помощью фактов, правил| [Код](https://github.com/timoninas/logic-programming/blob/master/lab_02/lab_02.pro) | [Отчет](https://github.com/timoninas/logic-programming/blob/master/lab_02/report/lab_02.pdf) | :negative_squared_cross_mark: |

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
