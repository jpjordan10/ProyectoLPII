<!DOCTYPE>

<%@page import="beans.ProyectoDTO"%>
<%@page import="java.util.ArrayList"%>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
<div class="container">
		<h1>Proyectos</h1>

		<a class="btn btn-primary" href="?metodo=lista">Ver data</a>
		<a class="btn btn-primary" href="registroProyecto.jsp">Nueva Proyecto</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">

			<tr>
				<th>Nro Proyecto</th>
				<th>Trabajador</th>
				<th>Tipo de Trabajo</th>
				<th>Fecha de registro</th>
				<th>Etapa</th>
				<th>Fecha de Actualización</th>
				<th>Monto Total</th>
				<th>Acciones</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</table>
	</div>




</body>
</html>