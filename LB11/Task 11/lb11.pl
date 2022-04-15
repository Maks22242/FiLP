man(voeneg).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

%11
father(X,Y):- parent(X,Y),man(X).
father(Y):- parent(X,Y),man(X),write(X).


%12 построить предикат sister(X, Y), который проверяет,
%является ли X сестрой Y. Построить предикат sisters(X), который выводит
%всех сестер X.

sister(X,Y):- parent(Z,Y),parent(Z,X), parent(D,Y),parent(D,X), woman(Y),woman(Z),man(D).
sister(X):- parent(Z,Y),parent(Z,X), parent(D,Y),parent(D,X), woman(Y),woman(Z),man(D),write(Y),nl,fail.

%13 Вариант 1 Построить предикат grand_ma(X, Y), который проверяет,
%является ли X бабушкой Y. Построить предикат grand_mas(X), который
%выводит всех бабушек X.

grand_ma(Y,X):- parent(X,Z),parent(Z,Y),woman(X),nl.
grand_mas(Y):- parent(X,Z),parent(Z,Y),woman(X),write(X),nl,fail.

% 14  Вариант 1Построить предикат grand_ma_and_son(X,Y) ,
% которыйпроверяет, являются ли X и Y бабушкой и внуком или внуком и
% бабушкой.

garnd_ma_son(X,Y):- parent(X,Z),parent(Z,Y),woman(X),nl;parent(Y,Z),parent(Z,X),woman(Y),nl.

%15 Найти произведение цифр числа. Рекурсия вверх

 prog_dig(X,X):- X<10,!.
 prog_dig(X,Y):-
           X1 is X div 10,
           prog_dig(X1,Y1),
           Y is Y1*(X mod 10).
%16 Найти произведение цифр числа. Рекурсия  вниз

prog_di_down(X,Y):-prog_dig_d(X,Y,X,1),!.
prog_dig_d(N,X,Count,Z):-  Count>0,!, Z1 is Z*(Count mod 10),  Count1 is Count div 10, prog_dig_d(N,X,Count1,Z1).
prog_dig_d(_,X,_,Y) :- X is Y.

%17 Найти количество нечетных цифр числа, больших 3.n рек. вверх

kol_di(0,0):- ! .

kol_di(X,Y):- X mod 10>3,
          D is (X mod 10), D mod 2 >0,
           X1 is X div 10, kol_di(X1,Y1), Y is Y1+1,!.
kol_di(X,Y):- X1 is  X div 10, kol_di(X1,Y1), Y is  Y1.

%18 Найти количество нечетных цифр числа, больших 3.n рек. вверх

kol_di_d(X,Y):- kol_di_d(X,Y,0),!.
kol_di_d(X,Y,ACC):-X>0, X mod 10>3,
          D is (X mod 10), D mod 2 >0,
          X1 is X div 10,  ACC1 is ACC+1, kol_di_d(X1,Y,ACC1).
kol_di_d(X,Y,ACC):-X>0,   X1 is X div 10, kol_di_d(X1,Y,ACC).
kol_di_d(_,X,Y):-X is Y.


%19 Задание 19 Реализовать предикат fib(N,X), где X – число Фибоначчи с
%номером N, причем 1 и 2 элемент равны 1 с помощью рекурсии вверх.

fib(1,1):-!.
fib(2,1):-!.
fib(N,X):- N1 is N-1,N2 is N-2, fib(N1,X1),fib(N2,X2), X is X1+X2.

%20 Задание 19 Реализовать предикат fib(N,X), где X – число Фибоначчи с
%номером N, причем 1 и 2 элемент равны 1 с помощью рекурсии вверх

fib_d(N,X):- fib_d(N,X,1,1,2),!.
fib_d(N,F,F,_,N):- !.
fib_d(N,X,A,B,C):- A1 is A+B, C1 is C+1,fib_d(N,X,A1,A,C1).
