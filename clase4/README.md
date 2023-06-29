# Clase 4

Functores y polimorfismo. Listas (extension y comprensión). Practica en labo o ¿Recursividad.?	


## Functores
Ver functores

## Listas

### Length
`length/2`: Relaciona una lista con su longitud
```Prolog
length([picasso, vanGogh, dali], 3). 
% true
length([picasso, vanGogh, dali], Cantidad).
% Cantidad = 3.
```

### Member
`member/2`: Verifica si un elemento está en una lista.
```Prolog
member(5, [5, 8]). 
% true
member(Valor, [5, 8]).
% Valor = 5 ;
% Valor = 8.
```

## Findall

Me va a crear una lista con los elementos que cumplan la condición.
`findall/3` es un predicado que relaciona un individuo o variable con una consulta y con el conjunto (lista) de los individuos que satisfacen la consulta.


```Prolog
findall(X, tiene(damian, X), Cosas).
% Cosas = [gato, perro]
findall(Persona, tiene(Persona, lentes), Quienes).
% Quienes = [juan, mica, tene]
findall(Algo, tiene(Persona, Algo), Lista).
% Lista = [gato, perro, gato, lentes, lentes, lentes].
```

 