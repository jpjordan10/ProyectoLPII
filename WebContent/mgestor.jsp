<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=10, maximum-scale=100, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<style>
.container {
	position: relative;
	width: 50%;
}

.image {
	display: block;
	width: 100%;
	height: auto;
}

.overlay {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	opacity: 0;
	transition: .5s ease;
	background-color: #008CBA;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 85%;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.col-md-3:hover .overlay {
	opacity: 1;
}

.col-md-3:hover .dropdown-content {
	display: block;
}

.text {
	color: white;
	font-size: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
}
</style>
</head>
<body>
	<div class="container">
		<h1>Menu del Gestor</h1>
		<hr>
		<br>
		<br>
		<div class="row">
			<div class="col-md-3">
				<button type="button" class="btn btn-link">
					<img src="./images/mantenimientos.png" style="width: 97%">
					<div class="overlay">
						<div class="text">Mantenimientos</div>
				</button>
				<div class="dropdown-content">
					<a href="mcliente.jsp">Clientes</a> <a href="mtrabajador.jsp">Trabajadores</a>
					<a href="mtiptra.jsp">Tipos de Trabajo</a>
				</div>
			</div>
			<div class="col-md-3">
				<button type="button" class="btn btn-link">
					<img src="./images/encuestas.png" style="width: 100%">
					<div class="overlay">
						<div class="text">Solicitudes</div>
					</div>
				</button>
				<div class="dropdown-content">
					<a href="#">Menu de Solicitudes</a> <a href="#">Registrar
						Solicitud</a>
				</div>
			</div>
			<div class="col-md-3">
				<button type="button" class="btn btn-link">
					<img src="./images/proyectos.png" style="width: 100%">
					<div class="overlay">
						<div class="text">Proyectos</div>
					</div>
				</button>
				<div class="dropdown-content">
					<a href="#">Menu de Proyectos</a> <a href="#">Registrar
						Proyecto</a>
				</div>
			</div>
			<div class="col-md-3">
				<button type="button" class="btn btn-link">
					<img src="./images/reportes.png" style="width: 100%">
					<div class="overlay">
						<div class="text">Reportes</div>
					</div>
				</button>
				<div class="dropdown-content">
					<a href="#">Reporte segun ...</a> 
					<a href="#">Reporte segun ...</a>
					<a href="#">Reporte segun ...</a>
					<a href="#">Reporte segun ...</a>
					<a href="#">Reporte segun ...</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>