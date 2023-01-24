<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
// LEYENDO DATOS DEL FORMULARIO
String ciudadFavorita = request.getParameter("ciudad_favorita");

// CREACIÓN DE LA COOKIE
Cookie laCookie = new Cookie("agenciaViajes.ciudadFavorita", ciudadFavorita);

// VIDA DE LA COOKIE
laCookie.setMaxAge(365*24*60*60); // UN AÑO EN SEGUNDOS

// ENVIAR LA COOKIE A USUARIO

response.addCookie(laCookie);

%>

Gracias por enviar tus preferencias

<a href = "agenciaViajesCookie.jsp">Ir a la agencia de viajes</a>
</body>
</html>