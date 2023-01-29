<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "CookieGuidedPractice.*" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String pais = request.getParameter("pais");

Connection myConnection = null;

Class.forName("com.mysql.jdbc.Driver");
try{
	myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cookie_i", "root", "jlomar12");

	//Statement myStatement = myConnection.createStatement();
	
	
	//String consultaSql = "INSERT INTO RESTAURANT (NombreR, PaisR) VALUES ('Barloa', 'Francia')";
	//myStatement.executeUpdate(consultaSql);
	//PreparedStatement preparedConsult = myConnection.prepareStatement("SELECT NOMBRE FROM HOTELES WHERE PAIS = ? ");
	//PreparedStatement preparedConsult2 = myConnection.prepareStatement("SELECT HOFROM ");
	
	//preparedConsult.setString(1, pais);
	
	//ResultSet myResultSet = //preparedConsult.executeQuery();
	
	//out.println("REGISTRADO CON EXITO");
	
	//if(myResultSet.absolute(1)){
		//out.println(myResultSet.getString(1));
		
	//}
	
	// CREACIÓN COOKIE
	Cookie myCookie = new Cookie("agenciaViajes.paisFavorito", pais);
	
	myCookie.setMaxAge(160*24*10);
	
	response.addCookie(myCookie);
	

}catch(Exception e){
	e.printStackTrace();
	out.println("ERROR");
}


%>
<a href = "agencia&viajes.jsp">Ir a la agencia de viajes</a>
</body>
</html>