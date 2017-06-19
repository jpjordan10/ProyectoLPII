<!DOCTYPE html>
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
		<h2>Generar Solicitud</h2>
		<form class="form-horizontal" action="solicitud" id="id_form">
			<input type="hidden" name="metodo" value="genera">
			<div class="form-group">
				<div class="col-sm-offset-10 col-sm-2">
					<button type="reset" class="btn btn-default" name="metodo">Cancelar</button>
					<button type="submit" class="btn btn-default">Generar Solicitud</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default" name="metodo">Cancelar</button>
					<button type="submit" class="btn btn-default">Generar Solicitud</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>