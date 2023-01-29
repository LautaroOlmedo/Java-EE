<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page import = "java.sql.*, java.util.*, empleadosJsp.Empleados" %>
<%
Connection myConnection;
ResultSet rs;
Statement myStatement;
//ArrayList<Empleados> empleados;
ArrayList<Empleados> datos = new ArrayList<>();
Class.forName("com.mysql.jdbc.Driver");
try{
myConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/empleados_JSP_ii", "root", "jlomar12");
myStatement = myConnection.createStatement();

String query = "SELECT * FROM empleados";
rs = myStatement.executeQuery(query);



while(rs.next()){
	datos.add(new Empleados(rs.getString("nombre"), rs.getString("apellido"), rs.getString("puesto"), rs.getDouble("sueldo")));
}

rs.close();
myConnection.close();

}catch(Exception e){
	out.println("ERROR");
	e.printStackTrace();
}

pageContext.setAttribute("empleadox", datos);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <c:forEach var = "Emp" items = "${empleadox}">
  
  ${Emp.nombre} ${Emp.apellido} ${Emp.puesto} ${Emp.sueldo} <br/>
   </c:forEach>
</body>
</html>