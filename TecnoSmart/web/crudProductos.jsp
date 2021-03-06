
<%@page import="dao.EstadoDAO"%>
<%@page import="modelos.Estado"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
       <%-- <link href="css/estilos.css" rel="stylesheet" type="text/css"/>  --%>
        <link href="css/estilotablaproductos.css" rel="stylesheet" type="text/css"/>
        <title>TecnoSmart</title>
    </head>
    <body class="fondo">
    <center>
        <h1>Ingreso de Reparacion</h1>
        <div class="direccion col-lg-3">
        <form action="ControladorProducto" method="post">
            <table class="direccion">
                <h1>detalleVenta</h1>
                <tr>
                    <td>Codigo de Cliente</td>
                    <td><input type="number" name="codigo"/></td>
                </tr>
                <tr>
                    <td>Tipo de Producto</td>
                    <td><input type="text" name="tipoProducto"/></td>
                </tr>
                <tr>
                    <td>Modelo de Producto</td>
                    <td><input type="text" name="modeloProducto"/></td>
                </tr>
                <tr>
                    <td>Precio</td>
                    <td><input type="number" name="precio"/></td>
                </tr>
            </table>
             </center>
            <br>
            <h1>detalleCliente</h1>
            <table align="left" class="otrolado">
                <tr>
                    <td>Nombre Cliente</td>
                    <td><input type="text" name="nombreCliente"/></td>
                </tr>
                <tr>
                    <td>Email Cliente</td>
                    <td><input type="text" name="emailCliente"/></td>
                </tr>
                <tr>
                    <td>Rut Cliente</td>
                    <td><input type="text" name="rutCliente"/></td>
                </tr>
                <tr>
                    <td>Telefono Cliente</td>
                    <td><input type="text" name="telefonoCliente"/></td>
                </tr>
                <tr>
                    <br>
                    <center>
                       <h1>datosProblemass</h1>
                <table aling="lefft" class="centrado">
                    <tr>
                    <td>Estado</td>
                    <td>
                        <select name="estado">
                            <option value="0">Seleccione</option>
                            <% ArrayList<Estado> estados = new EstadoDAO().obtenerEstados(); 
                            for(Estado e:estados){%>
                            <option value="<%= e.getId() %>"><%= e %></option>
                            <% } %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Descripcion del Problema</td>
                    <td><textarea cols="20" rows="5" name="descripcionProblema"></textarea></td>
                </tr>
                <tr>
                    <td><input type="reset" value="Limpiar"/></td>
                    <td><input type="submit" value="Registrar"/></td>
                <input type="hidden" name="accion" value="1"/>
                </tr> 
                    </center>
            </table> 
        </form>
        </div>
                        <% if(request.getParameter("msj")!= null){%>
        <h4><%= request.getParameter("msj") %></h4>
        <%}%>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
