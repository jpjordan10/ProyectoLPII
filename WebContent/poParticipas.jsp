<%@ taglib prefix="display" uri="http://displaytag.sf.net"  %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container"> 
		<h1>Proyectos Participados</h1>
		<form action="obrero?metodo=Oparticipas" method="post">
			<div>
				<input type="text" name="user" value="${datos}"  style="visibility:hidden;">
			</div>
			<hr>
			<div>
				<button type="submit" class="btn btn-primary">Consultar</button>
				<a class="btn btn-primary" href="mObrero.jsp">Regresar</a>
			</div>
			<br>
		<display:table name="participas">
			<display:column property="num_proyecto" title="Numero Proyecto"/>
			<display:column property="departamento_proyecto" title="Departamento"/>
			<display:column property="provincia_proyecto" title="Provincia"/>
			<display:column property="distrito_proyecto" title="Distrito"/>
			<display:column property="direccion_proyecto" title="Direccion"/>
			<display:column property="fecha_reg_proyecto" title="Fecha de Inicio"/>
			<display:column property="fecha_act_proyecto" title="Fecha Final"/>
			<display:column property="etapa_proyecto" title="Estado Proyecto"/>
			
		</display:table>
	</form>		
	</div>	
</body>
</html>