<h1 align="center">JSTL</h1>
<p>JSTL (JavaServer Pages Standard Tag Library) es una biblioteca estándar de etiquetas que se utiliza en las páginas JavaServer Pages (JSP) para simplificar el desarrollo de aplicaciones web Java. JSTL proporciona un conjunto de etiquetas de bibliotecas que permiten realizar tareas comunes sin necesidad de escribir mucho código Java en las páginas JSP, promoviendo así una separación más clara entre la lógica de negocio y la presentación.</p>
<h3>Componentes Principales de JSTL</h3>
<p>JSTL se compone de varias bibliotecas de etiquetas, cada una destinada a un propósito específico:</p>

- <b>Core Tags</b> (`c`): Incluye etiquetas para tareas generales como iteración (bucles), condicionales, importación de URLs, y gestión de parámetros. Ejemplos de etiquetas core incluyen `<c:forEach>`, `<c:if>`, y `<c:choose>`.
- <b>Formatting Tags</b> (`fmt`): Proporciona soporte para la internacionalización y localización, incluyendo formatos de números, fechas, y mensajes. Ejemplos incluyen `<fmt:formatDate>` y `<fmt:message>`.
- <b>SQL Tags</b> (`sql`): Permite realizar operaciones básicas con bases de datos directamente desde JSP. Estas etiquetas no son recomendadas para aplicaciones en producción debido a preocupaciones de seguridad y mantenibilidad, pero pueden ser útiles para prototipos o ejemplos simples. Ejemplos incluyen `<sql:query>` y `<sql:update>`.
- <b>XML Tags</b> (`x`): Facilita el procesamiento y la manipulación de documentos XML. Ejemplos incluyen `<x:parse>` y `<x:out>`.
- <b>Function Tags</b> (fn): Proporciona una serie de funciones útiles para la manipulación de cadenas y colecciones. Ejemplos incluyen `fn:contains()` y `fn:toUpperCase()`.

<h3>Beneficios de Usar JSTL</h3>

- <b>Reducción de Código Java en JSP</b>: JSTL permite que la mayoría de las operaciones se realicen a través de etiquetas, minimizando el uso de código Java embebido en las páginas JSP.
- <b>Facilidad de Mantenimiento</b>: Al separar más claramente la lógica de negocio de la presentación, las aplicaciones se vuelven más fáciles de mantener y escalar.
- <b>Consistencia</b>: Proporciona una forma estándar y consistente de realizar operaciones comunes en todas las páginas JSP.

<h1 align="center">applicationScope, requestScope, y sessionScope</h1>

Los términos `applicationScope`, `requestScope`, y `sessionScope` son objetos de ámbito (scopes) que se utilizan para almacenar y acceder a los datos de la aplicación en diferentes niveles de alcance. Estos ámbitos son parte del modelo de datos de JSP y se utilizan para controlar el ciclo de vida de los objetos y su accesibilidad en una aplicación web.

<h2>applicationScope</h2>

- <b>Descripción</b>: El `applicationScope` representa el ámbito de la aplicación. Los objetos almacenados en este ámbito están disponibles para todos los usuarios y para todas las sesiones durante toda la vida de la aplicación web.
- <b>Uso</b>: Es útil para almacenar datos globales o configuraciones compartidas por todos los usuarios de la aplicación, como parámetros de configuración o recursos compartidos.
- <b>Duración</b>: Desde que la aplicación se inicia hasta que se detiene o se reinicia.

<h2>requestScope</h2>

- <b>Descripción</b>: El `requestScope` representa el ámbito de la solicitud HTTP. Los objetos almacenados en este ámbito son accesibles durante el ciclo de vida de una sola solicitud HTTP.
- <b>Uso</b>: Se utiliza para datos que solo necesitan ser accesibles durante el procesamiento de una solicitud específica, como resultados de formularios o datos intermedios.
- <b>Duración</b>: Desde que se inicia la solicitud hasta que se completa.

<h2>sessionScope</h2>

- <b>Descripción</b>: El `sessionScope` representa el ámbito de la sesión del usuario. Los objetos almacenados en este ámbito son accesibles durante la sesión de un usuario específico.
- <b>Uso</b>: Es útil para almacenar datos relacionados con la sesión del usuario, como información de autenticación, preferencias de usuario o datos que deben persistir entre solicitudes.
- <b>Duración</b>: Desde que la sesión del usuario se inicia hasta que expira o se invalida.
