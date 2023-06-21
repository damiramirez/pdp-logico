% Pepe

esPlanta(petunia).
esPlanta(rosa).
esPlanta(menta).
esPlanta(girasol).

% Ver que onda: esVenenosa(petunia, planta).
% esVenenosa(bromadilona, rata).

esVenenosa(petunia).
esVenenosa(rosa).
esVenenosa(menta).
esVenenosa(arlequin).
esVenenosa(bromadiolona).



tieneGradoDeVeneno(Elemento, 3):-
  esPlanta(Elemento),
  esVenenosa(Elemento).
tieneGradoDeVeneno(bromadiolona, 20).
tieneGradoDeVeneno(arlequin, 40).
tieneGradoDeVeneno(pepe, 18).

% esPlantaComestible/1: una planta sera comestile cuando no sea venenosa.
esPlantaComestible(Elemento):-
  esPlanta(Elemento),
  not(esVenenosa(Elemento)).

% esHeavy/1: algo será heavy cuando su nivel de veneno sea mayor a 10 y menor a 30. 
esHeavy(Elemento):-
  tieneGradoDeVeneno(Elemento, Valor),
  between(10, 30, Valor).

% esIncomible/1 algo será incomible cuando su nivel de veneno sea mayor a 30. 
esIncomible(Elemento):-
  tieneGradoDeVeneno(Elemento, Valor),
  Valor > 30.

% combinacionIncomible/2: una combinación de 2 elementos es incomible si la suma de sus grados es mayor a 21.
combinacionIncomible(Elemento1, Elemento2):-
  tieneGradoDeVeneno(Elemento1, Valor1),
  tieneGradoDeVeneno(Elemento2, Valor2),
  Valor1 + Valor2 > 21.

% una combinación de 2 elementos es incomible si la suma de sus grados es igual a 21.
casiIncomible(Elemento1, Elemento2):-
  tieneGradoDeVeneno(Elemento1, Valor1),
  tieneGradoDeVeneno(Elemento2, Valor2),
  21 is Valor1 + Valor2.

siguiente(N, Siguiente):- Siguiente is N + 1.