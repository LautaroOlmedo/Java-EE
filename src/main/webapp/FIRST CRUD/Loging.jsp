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
<%
String nombre = request.getParameter("nombre");
String contra = request.getParameter("contra");

Class.forName("com.mysql.jdbc.Driver");
Connection conexion = null;
try{

conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectos_jsp", "root", "jlomar12"); 

PreparedStatement cPreparada = conexion.prepareStatement("SELECT * FROM USUARIOS WHERE NOMBRE = ? AND CONTRASENA = ?");

cPreparada.setString(1, nombre);
cPreparada.setString(2, contra);

ResultSet miResultSet = cPreparada.executeQuery();

if(miResultSet.absolute(1))
	out.println("LOGEADO CON EXITO");
else
	out.println("NO HAY USUARIOS CON ESOS DATOS");

}catch(Exception e){
	out.println("ERROR");
	e.printStackTrace();
}




%>
</body>
</html>