<html>
<body>
<h1>OBJETOS JSP PREDEFINIDOS</h1>

Petición datos del navegador: <%= request.getHeader("User-Agent")  %> // ESCRIBIRÁ EL NAVEGADOR DEL CLIENTE
</br>
</br>
Petición idioma utilizado: <%= request.getLocale() %> // ESCRIBIRÁ EL IDIOMA QUE UTILIZA EL CLIENTE
</body>
</html>