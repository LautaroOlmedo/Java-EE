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
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String contra = request.getParameter("contra");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection conexion = null;
try{

conexion = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectos_jsp", "root", "jlomar12"); 

java.sql.Statement miStatement = conexion.createStatement();

String consultaSql = "INSERT INTO USUARIOS (Nombre, Apellido, Contrasena) VALUES ('" + nombre + "', '" + apellido + "', '" + contra + "')";
miStatement.executeUpdate(consultaSql);
}catch(Exception e){
	e.printStackTrace();
}finally{
	conexion.close();
}

out.println("REGISTRADO CON EXITO");


%>

</body>
</html>