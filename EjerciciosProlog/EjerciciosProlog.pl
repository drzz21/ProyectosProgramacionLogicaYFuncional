
%             Monty Python & the Holy Grail (1975) 
witch(X)  :- burns(X),female(X). 
burns(X)  :- wooden(X).

wooden(X) :- floats(X). 
floats(X) :- sameweight(duck, X). 
 
female(girl).            
sameweight(duck,girl). 


%       Canción Estúpida

cancionestupida(0):-nl,write('Gomo ya no gueda shevvezza, -hic- be boy a doddmig...'). 
 
cancionestupida(N):-N>1,nl,write(N),write(' botellas de cerveza en el suelo'),nl,       
write(N),write(' botellas de cerveza'),nl,       
write('Cojo una y me la bebo'),nl,       
A is N-1, cancionestupida(A). 
 
cancionestupida(N):-N=1,nl,write(N),write(' bodellia de shegvezza en el zsduelo'),nl,
       write(N),write(' bodella de segbezha'),nl,       
       write('La gojo y be la bhebo'),nl,       
       A is N-1, cancionestupida(A). 


%               diagnostico de enfermedades

enfermo_de(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).
enfermo_de(manuel,gripe). 
tiene_sintoma(alicia,cansancio). 
sintoma_de(fiebre,gripe). 
sintoma_de(tos,gripe). 
sintoma_de(cansancio,anemia). 
elimina(vitaminas,cansancio). 
elimina(aspirinas,fiebre). 
elimina(jarabe,tos). 
recetar_a(X,Y):-enfermo_de(Y,A),alivia(X,A). 
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y). 
 



%               planificador de gastos

transporte(roma,20000). 
transporte(londres,25000). 
transporte(tunez,15000). 
 
alojamiento(hotel,roma,25000). 
alojamiento(hotel,londres,15000). 
alojamiento(hotel,tunez,10000). 
alojamiento(hostal,roma,15000). 
alojamiento(hostal,londres,10000). 
alojamiento(hostal,tunez,8000). 
alojamiento(camping,roma,10000). 
alojamiento(camping,londres,5000). 
alojamiento(camping,tunez,5000). 
 
viaje(W,X,Y,Z):-transporte(W,A),alojamiento(Y,W,C),B is C*X,Z is A+B. 


%         arbol genealógico
juan.
jose. padre(juan,jose). 
padre(juan,maria). 
padre(pedro,juan). 
padre(jose,luis). 
padre(X,Y). 
ancestro(X,Y):-padre(X,Y). 
ancestro(X,Y):-padre(X,Z),padre(Z,Y).


%               red semantica

atributo(animal,puede,respirar).

atributo(ave,vuela,bien).
atributo(ave,tiene,plumas).
atributo(ave,pone,huevos).
atributo(ave,es_un,animal).

atributo(mamifero,tiene,pelo).
atributo(mamifero,es_un,animal).
atributo(mamifero,da,leche).

atributo(avestruz,es_un,ave).
atributo(avestruz,patas,largas).
atributo(avestruz,vuela,no_puede)

atributo(albatros,es_un,ave).
atributo(albatros,vuela,muy_bien).

atributo(ballena,es_un,mamifero).
atributo(ballena,tiene,piel).
atributo(ballena,vive_en,mar).

atributo(tigre,es_un,mamifero).
atributo(tigre,come,carne).






%        horoscopo

horoscopo(aries,21,3,21,4). 
horoscopo(tauro,21,4,21,5). 
horoscopo(geminis,21,5,21,6). 
horoscopo(cancer,21,6,21,7). 
horoscopo(leo,21,7,21,8). 
horoscopo(virgo,21,8,21,9). 
horoscopo(libra,21,9,21,10). 
horoscopo(escorpio,21,10,21,11). 
horoscopo(sagitario,21,11,21,12). 
horoscopo(capricornio,21,12,21,1). 
horoscopo(acuario,21,1,21,2). 
horoscopo(piscis,21,2,21,3). 

signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),((Mes=M1,Dia>=D1); (Mes=M2,Dia=<D2)).


%         manejo de listas 

miembro(X,[X|_]).
miembro(X,[_|Y]) :- miembro(X,Y).

nel([],0). nel([_|Y],N) :- nel(Y,M), N is M+1. 

es_lista([]).
es_lista([_|_]). 

concatena([],L,L). 
concatena([X|L1],L2,[X|L3]) :- concatena(L1,L2,L3). 

ultimo(X,[X]). 
ultimo(X,[_|Y]) :- ultimo(X,Y). 
 
inversa([],[]). 
inversa([X|Y],L) :- inversa(Y,Z),concatena(Z,[X],L). 

borrar(X,[X|Y],Y). 
borrar(X,[Z|L],[Z|M]) :- borrar(X,L,M). 

subconjunto([X|Y],Z) :- miembro(X,Z),subconjunto(Y,Z). 
subconjunto([],_). 

insertar(E,L,[E|L]). 
insertar(E,[X|Y],[X|Z]) :- insertar(E,Y,Z). 

permutacion([],[]). 
permutacion([X|Y],Z) :- permutacion(Y,L),insertar(X,L,Z).

sust(_,_,[],[]). 
sust(E1,E2,[E1|L1],[E2|L2]) :- !, sust(E1,E2,L1,L2). 
sust(E1,E2,[Y|L1],[Y|L2]) :- sust(E1,E2,L1,L2). 

union([],L,L). 
union([X|L1],L2,L3) :- miembro(X,L2), !,union(L1,L2,L3). 
union([X|L1],L2,[X|L3]) :- union(L1,L2,L3). 

