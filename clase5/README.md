# Clase 5

Recursividad

## Recursividad

Recursividad es que un elemento de software se defina en función de sí mismo. La recursividad en lógico consistirá en definir un predicado en términos de sí mismo.

Prolog permite definir predicados recursivos, que deben tener
- un caso base o corte de la recursividad
- al menos un caso recursivo, donde el predicado esté definido en términos de sí mismo.

Un aspecto interesante del motor de inferencia Prolog es que permite encontrar múltiples soluciones también para este tipo de predicados, mientras no haya restricciones de inversibilidad.