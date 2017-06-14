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
		<h1>Registro de Tipo de Trabajo</h1>
		<form class="form-horizontal" action="tt" id="id_form">
			<input type="hidden" name="metodo" value="registra">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_descripcion">Descripcion:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_descripcion" type="text"
						name="descripcion" placeholder="Ingrese Descripcion">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default" name="metodo"
						value="lista">Cancelar</button>
					<button type="submit" class="btn btn-default">Registrar
						Tipo de Trabajo</button>
				</div>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('#id_form').bootstrapValidator({
				message : 'This value is not valid',
				feedbackIcons : {
					valid : 'glyphicon glyphicon-ok',
					invalid : 'glyphicon glyphicon-remove',
					validating : 'glyphicon glyphicon-refresh'
				},
				fields : {
					descripcion : {
						regexp : {
 							regexp: /^[a-z\s]+$/,
 							message: 'La Descripción solo puede contener letras y espacios'
						}
					}
				}
			});
		});
	</script>
</body>
</html>