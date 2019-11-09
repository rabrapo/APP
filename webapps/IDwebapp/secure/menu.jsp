<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="<c:url value='/static/css/tutorial.css'/>" type="text/css" />
    <title>IDwebapp MENU</title>
  </head>
  <body>
    <div class="container">
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <h1>Sistema de Gestión</h1>
        </div>
      </div>
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <p>Hola <%=request.getUserPrincipal().getName()%>.</p>
          <p>Este es el login que has utilizado: <%=request.getRemoteUser()%>.</p>
          <p>Tus roles son: <% if(request.isUserInRole("ROLE_A")) {%> A,<%}%>
            <% if(request.isUserInRole("ROLE_AC")) {%> AC,<%}%>
            <% if(request.isUserInRole("ROLE_GCFP")) {%> GCFP,<%}%>
            <% if(request.isUserInRole("ROLE_GCP")) {%> GCP,<%}%>
            <% if(request.isUserInRole("ROLE_GNT")) {%> GNT,<%}%></p>
          <p>Nota: sólo puedes acceder a los enlaces de color verde.<p>
        </div>
      </div>
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <h3>Módulo Ventas</h3></td>
          <% if(request.isUserInRole("ROLE_GCFP")) { %>
            <p><a id="verde" href="ventas/gestion_clientes.jsp">Operación: gestionar clientes</a></p>
            <p><a id="verde" href="ventas/gestion_facturas.jsp">Operación: gestionar facturas</a></p>
          <% } else { %>
            <p><a id="rojo" href="ventas/gestion_clientes.jsp">Operación: gestionar clientes</a></p>
            <p><a id="rojo" href="ventas/gestion_facturas.jsp">Operación: gestionar facturas</a></p>
          <% } %>
          <% if(request.isUserInRole("ROLE_GCFP") || request.isUserInRole("ROLE_A")) { %>
            <p><a id="verde" href="ventas/gestion_presupuestos.jsp">Operación: gestionar presupuestos</a></p>
          <% } else { %>
            <p><a id="rojo" href="ventas/gestion_presupuestos.jsp">Operación: gestionar presupuestos</a></p>
          <% } %>
        </div>
      </div>
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <h3>Módulo Compras</h3></td>
          <% if(request.isUserInRole("ROLE_AC")) { %>
            <p><a id="verde" href="compras/autorizar_compras.jsp">Operación: autorizar compras</a></p>
          <% } else { %>
            <p><a id="rojo" href="compras/autorizar_compras.jsp">Operación: autorizar compras</a></p>
          <% } %>
          <% if(request.isUserInRole("ROLE_GCP")) { %>
            <p><a id="verde" href="compras/gestion_compras.jsp">Operación: gestionar compras</a></p>
          <% } else { %>
            <p><a id="rojo" href="compras/gestion_compras.jsp">Operación: gestionar compras</a></p>
          <% } %>
          <% if(request.isUserInRole("ROLE_GCP") || request.isUserInRole("ROLE_A")) { %>
            <p><a id="verde" href="compras/gestion_proveedores.jsp">Operación: gestionar proveedores</a></p>
          <% } else { %>
            <p><a id="rojo" href="compras/gestion_proveedores.jsp">Operación: gestionar proveedores</a></p>
          <% } %>
        </div>
      </div>
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <h3>Módulo Nóminas</h3></td>
          <% if(request.isUserInRole("ROLE_GNT")) { %>
            <p><a id="verde" href="nominas/gestion_nominas.jsp">Operación: gestionar nóminas</a></p>
          <% } else { %>
            <p><a id="rojo" href="nominas/gestion_nominas.jsp">Operación: gestionar nóminas</a></p>
          <% } %>
          <% if(request.isUserInRole("ROLE_GNT") || request.isUserInRole("ROLE_A")) { %>
            <p><a id="verde" href="nominas/gestion_trabajadores.jsp">Operación: gestionar trabajadores</a></p>
          <% } else { %>
            <p><a id="rojo" href="nominas/gestion_trabajadores.jsp">Operación: gestionar trabajadores</a></p>
          <% } %>
        </div>
      </div>
      <div class="row justify-content-sm-right">
        <div class="col-sm-auto offset-sm-1">
          <h4><a href='<%= response.encodeURL("../index.jsp?logoff=true") %>'>Logout</a></h4>
        </div>
      </div>
    </div>
  </body>
</html>
