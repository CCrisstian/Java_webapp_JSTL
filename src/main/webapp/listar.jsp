<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Listado de Productos</title>
</head>
<body>
    <h1>Listado de Productos</h1>
    <c:if test="${username.present}">
        <div>Hola ${username.get()}, bienvenido!</div>
        <p><a href="${pageContext.request.contextPath}/productos/form">Crear [+]</a></p>
    </c:if>
    <table>
        <tr>
            <th>Id</th>
            <th>Nombre</th>
            <th>Tipo</th>
            <c:if test="${username.present}">
                <th>Precio</th>
                <th>Agregar</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </c:if>
        </tr>
        <c:forEach items="${productos}" var="p">
            <tr>
                <td>${p.id}</td>
                <td>${p.nombre}</td>
                <td>${p.categoria.nombre}</td>
                <c:if test="${username.present}">
                    <td>${p.precio}</td>
                    <td><a href="${pageContext.request.contextPath}/carro/agregar?id=${p.id}">Agregar al Carro</a></td>
                    <td><a href="${pageContext.request.contextPath}/productos/form?id=${p.id}">Editar</a></td>
                    <td><a onclick="return confirm('¿Está seguro que desea Eliminar?');"
                    href="${pageContext.request.contextPath}/productos/eliminar?id=${p.id}">Eliminar</a></td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
    <p>${applicationScope.mensaje}</p>
    <p>${requestScope.mensaje}</p>
</body>
</html>