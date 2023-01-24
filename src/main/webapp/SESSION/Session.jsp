<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name = "Formulario_Compra" action = "Session.jsp">
<p> Articulos a comprar </p>

<p>
<label><input type = "checkbox" name = "articulos" value = "agua"></label>Agua</label>
<br>

<label> <input type = "checkbox" name = "articulos" value = "Leche">Leche</label>
<br>

<label> <input type = "checkbox" name = "articulos" value = "Carne">Carne</label>
<br>
</p>
<input type = "submit" name = "button" id = "button" value = "Enviar">
</form>

<h2>Carro de la compra</h2>
<ul>
<%
List<String> listaElementos = (List<String>)session.getAttribute("misElementos");



if(listaElementos == null){
	listaElementos = new ArrayList<String>();
	session.setAttribute("misElementos", listaElementos);
}

String[] elementos = request.getParameterValues("articulos");

if(elementos != null){
	for(String elem : elementos){
		//out.println("<li>" + elem + "</li>");
		listaElementos.add(elem);
	}
}

for(String elem : listaElementos){
    out.println("<li>" + elem + "</li>");
}
%>
</ul>

</body>
</html>