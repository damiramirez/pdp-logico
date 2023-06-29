%%%%%%%%%%%%%
% Functores %
%%%%%%%%%%%%%

nacio(juan, fecha(3, 2, 98)).
nacio(pedro, diaDelArquero(2022)).

anioActual(2023).

% Si uso functores, tengo que hacer pattern matching para que me funcione
edad(fecha(_, _, Anio), Edad):-
  anioActual(AA),
  Edad is AA - Anio.
edad(diaDelArquero(Anio), Edad):-
  anioActual(AA),
  Edad is AA - Anio.

% Polimorfismo
% Funciona sin tener que hacer el pattern matching, edad se encarga.
esMenor(Persona):-
  nacio(Persona, Fecha),
  edad(Fecha, Edad),
  Edad < 18.

%%%%%%%%%%
% Listas %
%%%%%%%%%%

tiene(damian, gato, 2).
tiene(damian, perro, 1).
tiene(juan, gato, 4).
tiene(juan, lentes, 1).
tiene(mica, lentes, 2).
tiene(tene, lentes, 1).

esUnaPersona(damian).
esUnaPersona(juan).
esUnaPersona(mica).
esUnaPersona(tene).

cuantoTiene(Persona, Cosa, Cantidad):-
  % esUnaPersona(Persona),
  findall(Cosa, tiene(Persona, Cosa, _), Lista),
  length(Lista, Cantidad).