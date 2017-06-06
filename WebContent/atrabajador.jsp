<%@taglib uri="WEB-INF/libreria.tld" prefix="libreria"%>
<!DOCTYPE html>
<html lang="esS">
<%@page import="beans.TrabajadorDTO"%>
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
		<%
			TrabajadorDTO t = (TrabajadorDTO) request.getAttribute("tra");
		%>
		<h1>Actualiza Trabajador</h1>
		<form action="trabajador" id="id_form">
			<input type="hidden" name="metodo" value="actualiza">

			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombre</label> <input
					class="form-control" id="id_nombre" type="text" name="nombre"
					placeholder="Ingrese Nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellidop">Apellido
					Paterno</label> <input class="form-control" id="id_apellidop" type="text"
					name="apellidop" placeholder="Ingrese Apellido Paterno">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_apellidom">Apellido
					Materno</label> <input class="form-control" id="id_apellidom" type="text"
					name="apellidom" placeholder="Ingrese Apellido Materno">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_dni">DNI</label> <input
					class="form-control" id="id_dni" type="text" name="dni"
					placeholder="Ingrese DNI">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_email">E-mail</label> <input
					class="form-control" id="id_email" type="text" name="email"
					placeholder="Ingrese E-mail">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_telefono">Telefono</label> <input
					class="form-control" id="id_telefono" type="text" name="telefono"
					placeholder="Ingrese Telefono">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_departamento">Departamento</label>
				<input class="form-control" id="id_departamento" type="text"
					name="departamento" placeholder="Ingrese Departamento">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_provincia">Provincia</label> <input
					class="form-control" id="id_provincia" type="text" name="provincia"
					placeholder="Ingrese Provincia">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_distrito">Distrito</label> <input
					class="form-control" id="id_distrito" type="text" name="distrito"
					placeholder="Ingrese Distrito">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_direccion">Direccion</label> <input
					class="form-control" id="id_direccion" type="text" name="direccion"
					placeholder="Ingrese Direccion">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_user">User</label> <input
					class="form-control" id="id_user" type="text" name="user"
					placeholder="Ingrese User">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_password">Password</label> <input
					class="form-control" id="id_password" type="text" name="password"
					placeholder="Ingrese password">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_tipo">Tipo</label> <select
					class="form-control" name="tipo" id="id_tipo">
					<libreria:dameTipoTrabajador />
				</select>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Actualiza
					Trabajador</button>
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
								message : 'La edad es entre 18 y 90 a�os'
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