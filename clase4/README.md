# Clase 4

Functores y polimorfismo. Listas (extension y comprensión). Practica en labo o ¿Recursividad.?	


## Functores
Los functores permiten agrupar información relacionada. No son predicados, ya que no tienen un valor de verdad. Tienen nombre y una aridad que es la cantidad de individuos que lo componen.

```Prolog
nacio(karla, fecha(22, 08, 1979)).
nacio(sergio, fecha(14, 10, 1986))
nacio(_, fecha(_, _, Anio)).
% Anio = 1979 ;
% Anio = 1986.

% Lo que no se puede es tratar de relacionar como variable el nombre del functor:
nacio(_, Functor(_, _, Anio)).  % no funciona Functor

```

## Listas
Las listas representan una serie de elementos ordenados, que pueden repetirse.

La lista es una estructura recursiva definido de la siguiente manera:
- el caso base es la lista vacía, que se denota `[ ]`
- el caso recursivo es una lista con al menos un elemento, que se divide en el primer elemento o cabeza y - el resto llamado cola, que es una lista (aquí vemos la definición recursiva). Se denota con el patrón: `[Cabeza|Cola]`

*[List manipulation](https://www.swi-prolog.org/pldoc/man?section=lists)*
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

### Append
`append/3`: Permite relacionar dos listas con la lista concatenada.
```Prolog
append([1, 3], [2], Resto).
% Resto = [1, 3, 2].
append([1, 3], [2], [1, 2, 3]).
% false.
```

El predicado append/3 es inversible y tiene sentido para estos casos:
- el primer argumento como incógnita
- el segundo argumento como incógnita
- el tercer argumento como incógnita
- el primer y segundo argumento como incógnita

### Nth
`nth/3`: Relaciona un elemento con la posición que ocupa en una lista. Tenemos dos predicados: `nth0/3` que toma el índice partiendo de 0 y `nth1/3` que considera el índice partiendo de 1 como primer elemento.

```Prolog
nth0(2, [borges, cortazar, bioy], Elemento).
% Elemento = bioy.

nth0(Posicion, [borges, cortazar, bioy], cortazar).
% Posicion = 1.

nth1(2, [borges, cortazar, bioy], Elemento).
% Elemento = cortazar.
```

### Last
`last/2`: Relaciona una lista con su ultimo elemento.

```Prolog
last([1, 2, 3, 4, 5], Elemento).
% Elemento = 5.

last([1, 2, 3, 4, 5], 4).
% false
```

### Reverse
`reverse/2`: Verifica si los elementos de una lista están al reverso en la segunda.

```Prolog
reverse(X, [1, 2, 3]).
% X = [3, 2, 1] .

reverse([1, 2, 3], [1, 2, 3]).
% false.
```

### Otros predicados interesantes

- `sum_list/2`: Relaciona una lista de números con el total que suman esos números.
- `list_to_set/2`: Relaciona una lista de elementos repetidos con un conjunto sin repetidos.
- `max/min_member/2`: Relaciona el mayor/menor de una lista de elementos.
- `subset/2`: Relaciona un subconjunto de un conjunto de elementos.
- también tenemos operaciones de conjuntos: intersection/3, union/3, subtract/3.

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