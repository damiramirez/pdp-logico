# Clase 2

Inversibilidad. Negación. Aritmética	

## Inversibilidad

Decimos que un predicado es inversible cuando admite consultas tanto individuales como existenciales.

## Individuos simples

Son datos simples, atómicos, que no se pueden descomponer en otros elementos.

```Prolog
  juan = pepe => false
  juan = juan => true
  tobi \= ravioles => true
```

## Números
Los números en Prolog se los toma como valores literales, permite el uso de operadores aritméticos y de comparación por orden.

Para evaluar expresiones aritméticas y unificar el resultado con una variable, debemos usar el operador `is/2` que relaciona un número (del lado izquierdo) con una operación (del lado derecho) que se evalúa.
```Prolog
  4 is 2 * 2. => true
  4 is 24 - 6. => false
  Z is 2 * 2. => Z = 4
```