# Clase 3

Cuantificación universal - forall.

## For all

Se utiliza para expresar una consulta universal. Básicamente, permite verificar si una condición es verdadera para todos los valores posibles de una variable antes de considerar una afirmación como verdadera. `forall(Condicion, Accion)`

- Condición: expresión lógica o una llamada a un predicado
- Acción: es una o más metas (objetivos) a ejecutar si la condición es verdadera para todos los valores posibles.

El `forall` evalúa la `Condición` para todos los valores posibles de las variables involucradas. Si la `Condición` se cumple para todos los valores, entonces se ejecutan las metas especificadas en `Acción`. Si en algún punto la `Condición` no se cumple, el `forall` falla y no se ejecuta la `Acción`.

Siempre debe haber alguna variable libre con el antecedente, para decir *para todo X, tal que X...*.