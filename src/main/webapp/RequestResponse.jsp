<html>
<body>
<h1>OBJETOS JSP PREDEFINIDOS</h1>

Petici�n datos del navegador: <%= request.getHeader("User-Agent")  %> // ESCRIBIR� EL NAVEGADOR DEL CLIENTE
</br>
</br>
Petici�n idioma utilizado: <%= request.getLocale() %> // ESCRIBIR� EL IDIOMA QUE UTILIZA EL CLIENTE
</body>
</html>