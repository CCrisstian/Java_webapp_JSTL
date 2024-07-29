package org.CCristian.apiservlet.webapp.headers.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.CCristian.apiservlet.webapp.headers.services.ProductoService;
import org.CCristian.apiservlet.webapp.headers.services.ProductosServiceJdbcImpl;

import java.io.IOException;
import java.sql.Connection;

@WebServlet("/productos/form")
public class ProductoFormServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = (Connection) req.getAttribute("conn");    /*Conexión a la Base de Datos*/
        ProductoService service = new ProductosServiceJdbcImpl(conn);
        req.setAttribute("categorias", service.listarCategoria());  /*Obtener las categorías*/
        getServletContext().getRequestDispatcher("/form.jsp").forward(req, resp);   /*Pasar las categorías a form.jsp*/
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
