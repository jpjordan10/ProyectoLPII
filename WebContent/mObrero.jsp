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
</head>
<body>
	<div class="container">
		<h1>Menu Obrero</h1> <input type="text" name="user" value="${datos}" style="visibility:hidden;">
		<hr>
		<h3>Reportes de Proyectos :</h3>
		<br>
		<div class="row">
			<div class="col-md-3">
				<button type="button" class="btn btn-link" onclick="location='./poParticipas.jsp'">
					<img src="./images/reportes.png" style="width: 100%">
					<div class="overlay1" >
						<div class="text">Participas</div>
					</div>
				</button>
			</div>
			<div class="col-md-3">
				<button type="button" class="btn btn-link" onclick="location='./poParticipados.jsp'">
					<img src="./images/reportes.png" style="width: 100%">
					<div class="overlay2">
						<div class="text">Participados</div>
					</div>
				</button>
			</div>
		</div>
	</div>
</body>
</html>