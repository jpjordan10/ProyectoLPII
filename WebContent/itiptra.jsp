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
		<form action="tt" id="id_form">
			<input type="hidden" name="metodo" value="registra">
			<div class="form-group">
				<label class="control-label" for="id_descripcion">Descripcion</label>
				<input class="form-control" id="id_descripcion" type="text"
					name="descripcion" placeholder="Ingrese Descripcion">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Crea Tipo de
					Trabajo</button>
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