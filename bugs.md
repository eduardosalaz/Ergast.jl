* `GetDrivers(cons="jordan", year="1991", circuit="spa")` : ERROR: MethodError: Cannot convert an object of type Missing to an object of type String.

Por qué? Porque en esa carrera jordan traía a de Cesaris y Schumacher. Schumacher sí tiene código de driver (MSC) mientras que de Cesaris no, probablemente falla al tratar de crear una columna en el DataFrame con sólo un elemento disponible. Lo curioso es que cuando haces `GetDrivers(cons="jordan", year="1991")` si funciona, rellenando el resto de códigos con missing. Este es un bug interno de DataFrames. Hay que probar cuál es el número de rows para la que sí acepta la creación de la columna con varios datos missing.

Estaba pensando que podemos inicializar el df con la columna de driver code como una union de missing y string y después vaciar la table de jsontables.
