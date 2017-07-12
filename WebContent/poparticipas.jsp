<%@ taglib prefix="display" uri="http://displaytag.sf.net"  %>

<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=10, maximum-scale=100, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<link href="css/displaytag.css" rel="stylesheet" type="text/css" >
<link href="css/screen.css" rel="stylesheet" type="text/css" media="screen" />

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
		<h1>Proyectos en Participaci�n</h1>
		<form action="reporte?metodo=oparticipas" method="post">
			<div>
				<input type="text" name="user" value="${datos}"  style="visibility:hidden;">
			</div>
			<hr>
			<div>
				<button type="submit" class="btn btn-primary">Consultar</button>
				<a class="btn btn-primary" href="mobrero.jsp">Regresar</a>
			</div>
			<br>
		<display:table name="${participas}" >
			<display:column property="num_proyecto" title="N�mero Proyecto"/>
			<display:column property="departamento_proyecto" title="Departamento"/>
			<display:column property="provincia_proyecto" title="Provincia"/>
			<display:column property="distrito_proyecto" title="Distrito"/>
			<display:column property="direccion_proyecto" title="Direcci�n"/>
			<display:column property="fecha_reg_proyecto" title="Fecha de Registro"/>
			<display:column property="fecha_act_proyecto" title="Fecha Activaci�n"/>
			<display:column property="etapa_proyecto" title="Etapa"/>
		</display:table>
	</form>
	</div>
</body>
</html>