<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Agencia de viajes</h1>
<%

String paisPreferido = "Argentina";

Cookie[] lasCookies = request.getCookies();

if(lasCookies != null){
	for(Cookie cookieT: lasCookies){
		if("agenciaViajes.paisFavorito".equals(cookieT.getName())){
			paisPreferido = cookieT.getValue();
			break;
		}
	}
}

Connection myConnection = null;
PreparedStatement preparedConsult = null;
PreparedStatement preparedConsult2 = null;
try{
	myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cookie_i", "root", "jlomar12");
	preparedConsult = myConnection.prepareStatement("SELECT NOMBRE FROM HOTEL WHERE PAIS = ? ");
	preparedConsult2 = myConnection.prepareStatement("SELECT NOMBRER FROM RESTAURANT WHERE PAISR = ? ");
	preparedConsult.setString(1, paisPreferido);
	preparedConsult2.setString(1, paisPreferido);
}catch(Exception e){
	e.printStackTrace();
	out.println("Error");
}
%>

<h2>Hoteles en <%= paisPreferido %></h2>
<%

ResultSet rs = preparedConsult.executeQuery();

while(rs.next()){
	out.println("\n" + rs.getString(1));
}
 %>
 
 <h2>Restaurantes en <%= paisPreferido %></h2>
<%

ResultSet rs2 = preparedConsult2.executeQuery();
while(rs2.next()){
	out.println("\n" + rs2.getString(1));
}
 %>
 
 
</body>
</html>


