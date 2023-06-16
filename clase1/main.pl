pastas(ravioles).
pastas(fideos).

% Ejercicio: definir que 
% los involtinis son pastas
% las berenjenas en escabeche no son pastas

pastas(involtinis).
% No tengo que definir las berenjenas

% poliádicos

come(juan, ravioles).
come(brenda, fideos).
gusta(brenda, fideos).

% Haskell vs Prolog
% Haskel
%   tienePokemon pokemon entrenador = elem pokemon . pokemones
%   pokemonesEntrenador = pokemones
%   existeAlgunPokemon pokemon = any (tienePokemon)

% Prolog
% perdicado (atomo) -> Es mi conocimiento
% predicado 1 atomo -> propiedad
entrenador(ash).
entrenador(misty).
entrenador(brock).
% predicado 2 atomos -> relacion
tieneA(ash, pikachu).
tieneA(ash, pdgeot).
tieneA(ash, charizard).
tieneA(brock, gyarados).
tieneA(misty, charizard).
tieneA(misty, carpincho).

% A todos los predicados con los individuos lo llammaos clausula

% Para saber todos los pokemones de Ash -> Tocar Tab para que me siga dando los siguientes
% tieneA(ash, Pokemon).

% Existe algun entrenador que tenga a Pikachu
% tieneA(_, pikachu).

% Tiene Ash algun pokemon
% tieneA(ash, _).

% Mostrar los entrenadores y sus pokemones - Si pongo en mayuscula, son variables
% tieneA(Entrenador, Pokemon).
% Entrenador = ash, Pokemon = pikachu

% Si es entrenador => Quiere ser el mejor (implicacion)
% entrenador => quiereSerElMejor -> Es una regla
% quiereSerElMejor(ash) -> Se fija que ash sea entrenador y si cumple, es verdadero
quiereSerElMejor(Entrenador):-
  entrenador(Entrenador). % Condicion



pokemon(pikachu, 100, 50).
% Toma al pokemon, se fija que exista y que cumpla que el ataque > defensa
esBuenPokemon(Pokemon):-
  pokemon(Pokemon, Ataque, Defensa),
  Ataque > Defensa.

esBuenPokemon(Pokemon):-
  tieneA(Entrenador, Pokemon),
  esPoderoso(Entrenador).

% En la regla `,` es un AND - `;` es un OR

% Puedo hacer pattern matching
esPoderoso(Entrenador):-
  tieneA(Entrenador, pikachu);
  tieneA(Entrenador, charizard).
esPoderoso(ash).


