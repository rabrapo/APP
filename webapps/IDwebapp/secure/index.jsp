<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
  <head>
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="<c:url value='/static/css/tutorial.css'/>" type="text/css" />
      <title>Secure Page</title>
  </head>
  <body>
    <div id="content">

      <h1>Secure Page</h1>
      <p>
      This is a protected page. You can get to me if you've been remembered,
      or if you've authenticated this session.
      </p>

      <%if (request.isUserInRole("ROLE_SUPERVISOR")) { %>
          <p>You are a supervisor! You can therefore see the <a href="extreme/index.jsp">extremely secure page</a>.</p>
      <% } %>


      <p><a href="../">Home</a></p>
      <p><a href="../j_spring_security_logout">Logout</a></p>
    </div>
  </body>
</html>
