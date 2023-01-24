<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Agencia de viajes</h1>

<%
// VALOR POR DEFECTO (PRIMERA VEZ QUE ENTRA A LA PAGINA EL USUARIO)
String ciudadFavorita = "Madrid";

// LECTURA DE COOKIE

Cookie[] lasCookies = request.getCookies();

// BUSCAR PREFERENCIAS

if(lasCookies != null){
	for(Cookie cookieTemporal : lasCookies){
		if("agenciaViajes.ciudadFavorita".equals(cookieTemporal.getName())){
			ciudadFavorita = cookieTemporal.getValue();
			break;
		}
	}
}
%>

<h3>Vuelos a <%= ciudadFavorita %></h3>

<p>AQUI IRIAN LOS RESULTADOS DE CONSULTAR LA BASE DE DATOS CON EL VALOR DE LA CIUDAD FAVORITA</p>
</body>
</html>