<h1 align="center">JSTL</h1>
<p>JSTL (JavaServer Pages Standard Tag Library) es una biblioteca estándar de etiquetas que se utiliza en las páginas JavaServer Pages (JSP) para simplificar el desarrollo de aplicaciones web Java. JSTL proporciona un conjunto de etiquetas de bibliotecas que permiten realizar tareas comunes sin necesidad de escribir mucho código Java en las páginas JSP, promoviendo así una separación más clara entre la lógica de negocio y la presentación.</p>
<h3>Componentes Principales de JSTL</h3>
<p>JSTL se compone de varias bibliotecas de etiquetas, cada una destinada a un propósito específico:</p>

- <b>Core Tags</b> (`c`): Incluye etiquetas para tareas generales como iteración (bucles), condicionales, importación de URLs, y gestión de parámetros. Ejemplos de etiquetas core incluyen `<c:forEach>`, `<c:if>`, y `<c:choose>`.

<h3>Descomposición</h3>

- `<%=c.getId()%>`: Este código JSP dentro de las etiquetas `<%=%>` evalúa una expresión Java y la inserta en el HTML. Aquí, `c.getId()` obtiene el ID de la categoría `c` y lo establece como el valor de la opción (`value`) en el elemento `<option>`.
- `<%=c.getId().equals(producto.getCategoria().getId()) ? "selected" : "" %>`: Aquí es donde se utiliza el operador ternario.
  - Condición: `c.getId().equals(producto.getCategoria().getId())` verifica si el ID de la categoría actual `c` es igual al ID de la categoría asociada con el `producto`. Esto se hace utilizando el método `equals()` para comparar objetos en Java.
  - Valor si verdadero: Si la condición es `true` (es decir, los IDs son iguales), la expresión devuelve `"selected"`, lo que indica que esta opción debe mostrarse como seleccionada en la lista desplegable.
  - Valor si falso: Si la condición es `false`, la expresión devuelve una cadena vacía `""`, por lo que la opción no se marca como seleccionada.
- `<%=c.getNombre()%>`: Esto evalúa `c.getNombre()` para obtener el nombre de la categoría `c`, que se muestra como el texto visible de la opción en la lista desplegable.
