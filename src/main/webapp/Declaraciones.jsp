<html>

<body>


<h1>EJEMPLO SCRIPTLETS</h1>

<%! 

private int resultado;

public int metodoSuma(int i, int x){
	resultado = i + x;
	return resultado;
}

%>

<%= metodoSuma(6, 9) %>


</body>
</html>