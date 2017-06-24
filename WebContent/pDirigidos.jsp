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
		<h1>Proyectos Dirigidos</h1>
		<form action="Prueba">
			<div>
				<input type="text" name="user" >
			</div>
			<hr>
			<div>
				<button type="submit" class="btn btn-primary">Consultar</button>
				<a class="btn btn-primary" href="menuArq.jsp">Regresar</a>
			</div>
			<br>
		<display:table name="Dirigidos" >
			<display:column property="num_proyecto" title="Número Proyecto"/>
			<display:column property="fecha_reg_proyecto" title="Fecha de Registro"/>
			<display:column property="fecha_act_proyecto" title="Fecha Activación"/>
			<display:column property="departamento_proyecto" title="Departamento"/>
			<display:column property="provincia_proyecto" title="Provincia"/>
			<display:column property="distrito_proyecto" title="Distrito"/>
			<display:column property="direccion_proyecto" title="Dirección"/>
			<display:column property="etapa_proyecto" title="Etapa"/>
			<display:column property="costo_proyecto" title="Costro Proyecto"/>
			<display:column property="monto_total_proyecto" title="Monto Total"/>
			<display:column property="can_mes_proyecto" title="Meses"/>
			<display:column property="num_solicitud" title="Número Solicitud"/> 
		</display:table>
	</form>
	</div>
</body>
</html>