<h1 align="center">C.R.U.D.</h1>
<p>CRUD es un acrónimo que representa las cuatro operaciones básicas que se pueden realizar en una base de datos o en una aplicación de manejo de datos.</p>

- <b>Create</b> 
- <b>Read</b>  
- <b>Update</b> 
- <b>Delete</b> 
<p>Estas operaciones permiten manipular y gestionar los datos almacenados en una base de datos de manera completa y eficiente.</p>

- <b>Create</b> (Crear):
  - Esta operación implica agregar nuevos registros a una base de datos.
  - En SQL, se realiza mediante la sentencia `INSERT`.
- <b>Read</b> (Leer):
  - Esta operación implica recuperar datos de la base de datos.
  - En SQL, se realiza mediante la sentencia `SELECT`.
- <b>Update</b> (Actualizar):
  - Esta operación implica modificar los registros existentes en una base de datos.
  - En SQL, se realiza mediante la sentencia `UPDATE`.
- <b>Delete</b> (Eliminar):
  - Esta operación implica borrar registros de una base de datos.
  - En SQL, se realiza mediante la sentencia `DELETE`.

<h1 align="center">Operador ternario en Java</h1>
<p>El operador ternario en Java es una forma concisa de escribir una declaración if-else en una sola línea.</p>

```java
variable = (condición) ? valor_si_verdadero : valor_si_falso;
```

<h3>Cómo funciona</h3>

- <b>Condición</b>: La expresión antes del signo de interrogación (`?`) es la condición que se evalúa. Debe ser una expresión booleana que resulte en `true` o `false`.
- <b>Valor si verdadero</b>: La expresión inmediatamente después del signo de interrogación (`?`) es el valor que se asigna a la variable si la condición es `true`.
- <b>Valor si falso</b>: La expresión después de los dos puntos (`:`) es el valor que se asigna a la variable si la condición es `false`.

```jsp
<option value="<%=c.getId()%>" <%=c.getId().equals(producto.getCategoria().getId())? "selected": ""%> ><%=c.getNombre()%></option>
```

<h3>Descomposición</h3>

- `<%=c.getId()%>`: Este código JSP dentro de las etiquetas `<%=%>` evalúa una expresión Java y la inserta en el HTML. Aquí, `c.getId()` obtiene el ID de la categoría `c` y lo establece como el valor de la opción (`value`) en el elemento `<option>`.
- `<%=c.getId().equals(producto.getCategoria().getId()) ? "selected" : "" %>`: Aquí es donde se utiliza el operador ternario.
  - Condición: `c.getId().equals(producto.getCategoria().getId())` verifica si el ID de la categoría actual `c` es igual al ID de la categoría asociada con el `producto`. Esto se hace utilizando el método `equals()` para comparar objetos en Java.
  - Valor si verdadero: Si la condición es `true` (es decir, los IDs son iguales), la expresión devuelve `"selected"`, lo que indica que esta opción debe mostrarse como seleccionada en la lista desplegable.
  - Valor si falso: Si la condición es `false`, la expresión devuelve una cadena vacía `""`, por lo que la opción no se marca como seleccionada.
- `<%=c.getNombre()%>`: Esto evalúa `c.getNombre()` para obtener el nombre de la categoría `c`, que se muestra como el texto visible de la opción en la lista desplegable.
