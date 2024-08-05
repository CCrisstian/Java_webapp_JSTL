<%@page contentType="text/html" pageEncoding="UTF-8"
import="java.util.*, java.time.format.*, org.CCristian.apiservlet.webapp.headers.models.*"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
    Map<String, String> errores = (Map<String, String>) request.getAttribute("errores");
    Producto producto = (Producto) request.getAttribute("producto");
    String fecha = producto.getFechaRegistro() != null? producto.getFechaRegistro().format(DateTimeFormatter.ofPattern("YYYY-MM-dd")): "";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Productos</title>
</head>
<body>
<h1>Formulario de Productos</h1>
<form action="${pageContext.request.contextPath}/productos/form" method="post">
    <div>
        <label for="nombre">Nombre</label>
        <div>
            <input type="text" name="nombre" id="nombre" value="${producto.nombre}">
        </div>
        <% if(errores != null && errores.containsKey("nombre")){%>
            <div style="color:red;"><%=errores.get("nombre")%></div>
        <% } %>
    </div>
    <div>
        <label for="precio">Precio</label>
        <div>
            <input type="number" name="precio" id="precio" value="${producto.precio > 0? producto.precio: ""}">
        </div>
        <% if(errores != null && errores.containsKey("precio")){%>
            <div style="color:red;"><%=errores.get("precio")%></div>
        <% } %>
    </div>
    <div>
        <label for="sku">SKU</label>
        <div>
            <input type="text" name="sku" id="sku" value="${producto.sku}">
        </div>
        <% if(errores != null && errores.containsKey("sku")){%>
            <div style="color:red;"><%=errores.get("sku")%></div>
        <% } %>
    </div>
    <div>
        <label for="fecha_registro">Fecha Registro</label>
        <div>
            <input type="date" name="fecha_registro" id="fecha_registro" value="${producto.fechaRegistro != null? producto.fechaRegistro.format(DateTimeFormatter.ofPattern("YYYY-MM-dd")): ""}">
        </div>
        <% if(errores != null && errores.containsKey("fecha_registro")){%>
            <div style="color:red;"><%=errores.get("fecha_registro")%></div>
        <% } %>
    </div>
    <div>
        <label for="categoria">Categoría</label>
        <div>
            <select name="categoria" id="categoria">
                <option value="">--- Seleccionar ---</option>
                <c:forEach items="${categorias}" var="c">
                    <option value="${c.id}" ${c.id.equals(producto.categoria.id)? "selected": ""}>${c.nombre}</option>
                </c:forEach>
            </select>
        </div>
        <% if(errores != null && errores.containsKey("categoria")){%>
            <div style="color:red;"><%=errores.get("categoria")%></div>
        <% } %>
    </div>
    <div><input type="submit" value="${producto.id != null && producto.id > 0? "Editar":"Crear"}"></div>
    <input type="hidden" name="id" value="${producto.id}" >
</form>
</body>
</html>