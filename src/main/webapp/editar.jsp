<%@page import="com.emergentes.modelo.Producto"%>
<%
    Producto item = (Producto) request.getAttribute("miProducto");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./css/style.css">
        <title>Registro de Productos</title>
    </head>
    <body>
        <div class="container">
        <h1><%= (item.getId() == 0) ? "Nuevo Registro":"Editar Registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>
                    <td>Descripcion</td>
                    <td><input type="text" name="descripcion" value="<%= item.getDescripcion() %>"/></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="number" name="cantidad" value="<%= item.getCantidad() %>"/></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="number" name="precio" value="<%= item.getPrecio() %>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit" value="Enviar">Enviar</button></td>
                </tr>
            </table>
        </form>
        </div>
    </body>
</html>
