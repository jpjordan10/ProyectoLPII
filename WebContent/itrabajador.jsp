<%@taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
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
		<h2>Registro de Trabajador</h2>
		<form class="form-horizontal" action="trabajador" id="id_form">
			<input type="hidden" name="metodo" value="registra">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_nombre">Nombre:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_nombre"
						placeholder="Ingrese nombres" name="nombre">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidop">Apellido
					Paterno:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_apellidop"
						placeholder="Ingrese apellido paterno" name="apellidop">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidom">Apellido
					Materno:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_apellidom"
						placeholder="Ingrese apellido materno" name="apellidom">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_dni">DNI:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_dni"
						placeholder="Ingrese DNI" name="dni">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_correo">Correo
					Electrónico:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_correo"
						placeholder="Ingrese correo electrónico" name="email">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_telefono">Teléfono:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_telefono"
						placeholder="Ingrese telefono" name="telefono">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_departamento">Departamento:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_departamento"
						placeholder="Ingrese departamento" name="departamento">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_provincia">Provincia:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_provincia"
						placeholder="Ingrese provincia" name="provincia">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_distrito">Distrito:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_distrito"
						placeholder="Ingrese distrito" name="distrito">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_direccion">Dirección:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_direccion"
						placeholder="Ingrese dirección" name="direccion">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_user">User:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_user"
						placeholder="Ingrese usuario" name="user">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_password">Password:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="id_password"
						placeholder="Ingrese password" name="password">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_tipo">Tipo:</label>
				<div class="col-sm-10">
					<select class="form-control" name="tipo" id="id_tipo">
						<option value='0'>Seleccione tipo de trabajador</option>
						<option value='ARQUEOLOGO'>ARQUEOLOGO</option>
						<option value='OBRERO'>OBRERO</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default" name="metodo"
						value="lista">Cancelar</button>
					<button type="submit" class="btn btn-default">Registrar
						Trabajador</button>
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
					nombre : {
						validators : {
							notEmpty : {
								message : 'El nombre es un campo obligatorio'
							}
						}
					},
					apellido : {
						validators : {
							notEmpty : {
								message : 'El apellido es un campo obligatorio'
							}
						}
					},
					edad : {
						validators : {
							notEmpty : {
								message : 'La edad es un campo obligatorio'
							},
							integer : {
								message : 'La edad es de tipo entero'
							},
							between : {
								min : 18,
								max : 90,
								message : 'La edad es entre 18 y 90 años'
							}
						}
					},
				}
			});

			// Validate the form manually
			$('#validateBtn').click(function() {
				$('#id_form').bootstrapValidator('validate');
			});
		});
	</script>

</body>
</html>