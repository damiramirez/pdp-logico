# Clase 1

Hechos, consultas y reglas. Principio de universo cerrado. Unificación. Múltiples respuestas. Pattern Matching.	

Introducción al paradigma lógico y Prolog

- `swipl main.pl` -> ejecuto archivo
- `halt.` -> Salgo
- `make.` -> Hago cambios en Visual Studio Code, para refrescar

## Paradigma Lógico

El paradigma lógico es un enfoque de programación que se basa en la lógica formal y el razonamiento deductivo. En este paradigma, se describe el problema a resolver utilizando un conjunto de reglas lógicas y hechos, y se utiliza un motor de inferencia para derivar conclusiones lógicas a partir de ellos.

En lugar de especificar cómo se debe resolver un problema paso a paso, como en otros paradigmas como el imperativo, en el paradigma lógico se describe el problema en términos de relaciones lógicas y restricciones, y el motor de inferencia se encarga de encontrar soluciones lógicamente consistentes.

## Definir el conocimiento

El código que escribamos en el archivo va a ser una **base de conocimiento**, que define el alcance, lo que forma parte de nuestro universo de cosas conocidas y lo que no.

```Prolog
pastas(ravioles).
pastas(fideos).
```

## Predicados e individuos

La base de conocimiento se conforma de predicados. Si el predicado tiene aridad 1 (un solo individuo participa de la relación) se lo llama monádicos.

Los individuos son los elementos que forman parte del universo posible de los predicados.

## Consulta

La inferencia es el proceso por el cual se derivan conclusiones a partir de premisas. Las consultas es lo que hacemos para probar nuestra programa. Una consulta no devuelve nada, sino que tiene un valor de verdad.

Puedo consultar si determinados individuos cumplen una propiedad o una relación (consulta individual) o bien puedo preguntar si existe algún individuo que la cumpla (consulta existencial).

```Prolog
? pastas(ravioles).
true

? pastas(fideos).
true
```

Es importante el punto `.` para delimitar el final de la consulta.

![Motor Prolog](./motor.png)

## Principio de universo cerrado

Si hacemos una consulta y los individuos no estan dentro del alcance, Prolog me va a devolver `False`. Se puede tomar como que ese individuo no cumple con el predicado o que es desconocido.

```Prolog
? pastas(pechitoCerdo).
false

? pastas(ñoquis).
false
```

**Vamos a tomar todo lo desconocido como falso.**

La base de conocimientos compone todo el universo conocido, todo lo que está fuera no se puede probar que existe, por lo tanto se asume falso según el Principio de Universo Cerrado.

- Individuo
  - Individuo simple 
    - Átomo
    - Numero
  - Individuo compuesto
    - Lista
    - Functor
  - Predicado
    - Propiedad
    - Relación
  - Clausula
    - Hecho
    - Regla
  - Consulta
    - Individual
    - Existencial

## Predicados poliádicos

Los predicados que tienen mas de un argumento se llaman poliádicos, ya que expresan relaciones entre individuos.

**Tip**: es conveniente escribir las definiciones de un mismo predicado en forma contigua, y no intercalar definiciones de otros predicados.

## Definición por extensión

Un conjunto de hechos para el mismo predicado forman la definición por extensión del predicado. En mayúscula prolog crea una variable.

Ej: Animales = "Tigre", "Oso", "Elefante"

```Prolog
animal(tigre).
animal(oso).
animal(elefante).
% Animales = { tigre, oso, elefante }
```

Este tipo de definición requiere que enumeremos todos los elementos del conjunto.

Si quiero saber si existe cierto elemento que cumpla con el predicado, puedo usar la variable anónima `_`. 

En cambio si uso un nombre de variable en mayúscula, me va a mostrar todos los elementos del universo que cumplan la relación. 

## Tipos de consultas

- Determinar si una relación específica se satisface o no, instanciando todos los argumentos -> Verifica si es `true` o `false`.
  ```Prolog
  come(juan, ravioles).
  pastas(bohio).
  pastas(_).
  ```
- Consultas existenciales, permiten conocer los individuos que satisfacen una relación, en ese caso alguno de los argumentos debe estar libre (debe ser una variable). 
  ```Prolog
  come(juan, Comida).
  come(Persona, Comida).
  pastas(Pasta).
  ```
  
## Reglas
Una regla tiene uno o más antecedentes: en este caso es uno solo, humano/1 y un consecuente.
Si se cumplen los antecedentes, entonces se satisface el consecuente. Lo que en lógica se escribe p => q, en sintaxis PROLOG se escribe al revés:
q :- p. 
