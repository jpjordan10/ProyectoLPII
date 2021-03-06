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

.overlay1 {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	opacity: 0;
	transition: .5s ease;
	background-color: red;
}

.col-md-3:hover .overlay1 {
	opacity: 1;
}

.overlay2 {
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

.col-md-3:hover .overlay2 {
	opacity: 1;
}

.overlay3 {
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	height: 100%;
	width: 100%;
	opacity: 0;
	transition: .5s ease;
	background-color: green;
}

.col-md-3:hover .overlay3 {
	opacity: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
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
	
		<h1>Menu Obrero</h1>
		<hr>
		<h3>Reportes de Proyectos :</h3>
		<br>
		<div>
		<form action="reporte?metodo=oparticipas" method="post">
			<div class="col-md-3">
				<input type="text" name="user" value="${datos}" style="visibility: hidden;">
				<button type="submit" class="btn btn-link">
					<img src="./images/reportes.png" style="width: 100%">
					<div class="overlay1">
						<div class="text">Actuales</div>
					</div>
				</button>
			</div>
		</form>
		<form action="reporte?metodo=oparticipados" method="post">	
			<div class="col-md-3">
				<input type="text" name="user" value="${datos}" style="visibility: hidden;">
				<button type="submit" class="btn btn-link">
					<img src="./images/reportes.png" style="width: 100%">
					<div class="overlay2">
						<div class="text">Participados</div>
					</div>
				</button>
			</div>
		</form>	
		</div>
		<form action="trabajador?metodo=cambiadatos" method="post">	
			<div class="col-md-3">
				<input type="text" name="user" value="${datos}" style="visibility: hidden;">
				<button type="submit" class="btn btn-link">
					<img src="./images/usuario.png" style="width: 100%">
					<div class="overlay3">
						<div class="text">Datos</div>
					</div>
				</button>
			</div>
		</form>
	</div>
</body>
</html>