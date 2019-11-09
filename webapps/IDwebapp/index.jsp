<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%
  if(request.getParameter("logoff") != null) {
    session.invalidate();
    response.sendRedirect("index.jsp");
    return;
  }
%>

<!DOCTYPE html>

<html>
  <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="<c:url value='/static/css/tutorial.css'/>" type="text/css" />
      <title>Home Page</title>
  </head>
  <body>
    <div id="content">
      <h1>Home Page</h1>
      <p>Anyone can view this page.</p>

      <p>Your principal object is....: <%= request.getUserPrincipal() %></p>

      <p><a href="secure/menu.jsp">Acceso al Sistema</a></p>
      <!--
      <%if (request.isUserInRole("ROLE_USER")) { %>
          <p>You can currently access "/secure" URLs.</a>.</p>
      <% } %>

      <%if (request.isUserInRole("ROLE_SUPERVISOR")) { %>
          <p>You can currently access "/secure/extreme" URLs.</a>.</p>
      <% } %>


      <p><a href="secure/index.jsp">Secure page</a></p>
      <p><a href="secure/extreme/index.jsp">Extremely secure page</a></p> -->
    </div>
  </body>
</html>
