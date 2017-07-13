<%@page import="beans.ClienteDTO"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<title>Actualizar Cliente</title>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
</head>
<body>
	<div class="container">
		<%
			ClienteDTO c = (ClienteDTO) request.getAttribute("cli");
		%>
		<h1>Actualizacion de Cliente</h1>
		<form class="form-horizontal" action="cliente" id="id_form" method="post">
			<input type="hidden" name="metodo" value="actualiza"> <input
				type="hidden" name="codigo" value="<%=c.getCod_cliente()%>">
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_razon">Razon
					Social:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_razon" type="text" name="razon"
						placeholder="Ingrese Razon Social" value="<%=c.getRazsoc_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_ruc">RUC:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_ruc" type="text" name="ruc"
						placeholder="Ingrese RUC" value="<%=c.getRuc_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_email">E-mail:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_email" type="text" name="email"
						placeholder="Ingrese E-mail" value="<%=c.getEmail_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_telefono">Telefono:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_telefono" type="text"
						name="telefono" placeholder="Ingrese Telefono" value="<%=c.getTelefono_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_departamento">Departamento:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_departamento" type="text"
						name="departamento" placeholder="Ingrese Departamento" value="<%=c.getDepartamento_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_provincia">Provincia:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_provincia" type="text"
						name="provincia" placeholder="Ingrese Provincia" value="<%=c.getProvincia_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_distrito">Distrito:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_distrito" type="text"
						name="distrito" placeholder="Ingrese Distrito" value="<%=c.getDistrito_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_direccion">Direccion:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_direccion" type="text"
						name="direccion" placeholder="Ingrese Direccion" value="<%=c.getDireccion_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="id_representante">Representante:</label>
				<div class="col-sm-10">
					<input class="form-control" id="id_representante" type="text"
						name="representante" placeholder="Ingrese Representante" value="<%=c.getRepresentante_cliente()%>">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<a class="btn btn-default" href="cliente?metodo=lista">Cancelar</a>
					<button type="submit" class="btn btn-default">Actualiza
						Cliente</button>
				</div>
			</div>
		</form>
	</div>


	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#id_form')
									.bootstrapValidator(
											{
												message : 'This value is not valid',
												feedbackIcons : {
													valid : 'glyphicon glyphicon-ok',
													invalid : 'glyphicon glyphicon-remove',
													validating : 'glyphicon glyphicon-refresh'
												},
												fields : {
													razon : {
														validators : {
															notEmpty : {
																message : 'La Razón Social es un campo obligatorio'
															},
															identical : {
																message : 'La Razón Social es un valor repetido'
															},
															regexp : {
																regexp : /^[a-z\s_0-9]+$/,
																message : 'La Razón Social solo puede contener letras, números y espacios'
															}
														}
													},
													ruc : {
														validators : {
															notEmpty : {
																message : 'El RUC es un campo obligatorio'
															},
															identical : {
																message : 'El RUC es un valor repetido'
															},
															regexp : {
																regexp : /^[0-9]+$/,
																message : 'El RUC solo puede contener números'
															},
															stringLength : {
																min : 11,
																max : 11,
																message : 'El RUC debe contener 11 caracteres'
															}
														}
													},
													email : {
														validators : {
															notEmpty : {
																message : 'El E-Mail es un campo obligatorio'
															},
															identical : {
																message : 'La E-Mail es un valor repetido'
															},
															emailAddress : {
																message : 'El E-Mail no es valido'
															}
														}
													},
													telefono : {
														validators : {
															notEmpty : {
																message : 'El Teléfono es un campo obligatorio'
															},
															regexp : {
																regexp : /^[0-9]+$/,
																message : 'El Teléfono solo puede contener números'
															},
															stringLength : {
																min : 9,
																max : 9,
																message : 'El Teléfono debe contener 9 caracteres'
															}
														}
													},
													departamento : {
														validators : {
															notEmpty : {
																message : 'El Departamento es un campo obligatorio'
															},
															regexp : {
																regexp : /^[a-z\s]+$/,
																message : 'El Departamento solo puede contener letras y espacios'
															}
														}
													},
													provincia : {
														validators : {
															notEmpty : {
																message : 'La Provincia es un campo obligatorio'
															},
															regexp : {
																regexp : /^[a-z\s]+$/,
																message : 'La Provincia solo puede contener letras y espacios'
															}
														}
													},
													distrito : {
														validators : {
															notEmpty : {
																message : 'El Distrito es un campo obligatorio'
															},
															regexp : {
																regexp : /^[a-z\s]+$/,
																message : 'El Distrito solo puede contener letras y espacios'
															}
														}
													},
													direccion : {
														validators : {
															notEmpty : {
																message : 'La Dirección es un campo obligatorio'
															},
															regexp : {
																regexp : /^[a-z\s_0-9]+$/,
																message : 'La Dirección solo puede contener letras, números y espacios'
															}
														}
													},
													tipo : {
														validators : {
															notEmpty : {
																message : 'El Tipo es un campo obligatorio'
															}
														}
													},
													representante : {
														validators : {
															notEmpty : {
																message : 'El Representante Legal es un campo obligatorio'
															},
															regexp : {
																regexp : /^[a-z\s]+$/,
																message : 'El Representante Legal solo puede contener letras y espacios'
															}
														}
													}
												}
											});
						});
	</script>

</body>
</html>