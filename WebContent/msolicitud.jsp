<!DOCTYPE>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.SolicitudDTO"%>
<html>
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
<title>Menu Solicitud</title>
</head>
<body>
<div class="container">
		<h1>Solicitudes</h1>

		<a class="btn btn-primary" href="#">Ver data</a>
		<a class="btn btn-primary" href="#">Generar Solicitud</a>
	</div>

	<br>
	<br>
	<div class="container">
		<table class="table">
			<tr>
				<th>Nro Solicitud</th>
				<th>Cliente</th>
				<th>Fecha Registro</th>
				<th>Estado</th>
				<th>Permisos</th>
				<th>Fecha de Actualización</th>
				<th>Acciones</th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
		</table>
	</div>


</body>
</html>