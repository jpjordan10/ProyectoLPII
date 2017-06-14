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
		<h1>Actualizacion de Trabajador</h1>
		<form class="form-horizontal" action="trabajador" id="id_form">
			
			<input type="hidden" name="metodo" value="actualiza">
			<input type="hidden" name="codigo" value="<%=t.getCod_trabajador()%>">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_nombre">Nombre</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_nombre" type="text"
						name="nombre" placeholder="Ingrese Nombre"
						value="<%=t.getNom_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidop">Apellido
					Paterno</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_apellidop" type="text"
						name="apellidop" placeholder="Ingrese Apellido Paterno"
						value="<%=t.getApep_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_apellidom">Apellido
					Materno</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_apellidom" type="text"
						name="apellidom" placeholder="Ingrese Apellido Materno"
						value="<%=t.getApem_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_dni">DNI</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_dni" type="text" name="dni"
						placeholder="Ingrese DNI" value="<%=t.getDni_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_email">E-mail</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_email" type="text" name="email"
						placeholder="Ingrese E-mail" value="<%=t.getEmail_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_telefono">Telefono</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_telefono" type="text"
						name="telefono" placeholder="Ingrese Telefono"
						value="<%=t.getTelefono_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_departamento">Departamento</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_departamento" type="text"
						name="departamento" placeholder="Ingrese Departamento"
						value="<%=t.getDepartamento_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_provincia">Provincia</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_provincia" type="text"
						name="provincia" placeholder="Ingrese Provincia"
						value="<%=t.getProvincia_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_distrito">Distrito</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_distrito" type="text"
						name="distrito" placeholder="Ingrese Distrito"
						value="<%=t.getDistrito_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_direccion">Direccion</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_direccion" type="text"
						name="direccion" placeholder="Ingrese Direccion"
						value="<%=t.getDireccion_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_password">Password</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_password" type="text"
						name="password" placeholder="Ingrese password"
						value="<%=t.getPass_trabajador()%>">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="reset" class="btn btn-default" name="metodo"
						value="lista">Cancelar</button>
					<button type="submit" class="btn btn-default">Actualiza
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