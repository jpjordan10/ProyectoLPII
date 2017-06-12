<%@page import="beans.ClienteDTO"%>
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
	<%
		ClienteDTO c = (ClienteDTO)request.getAttribute("cli");
	%>
		<h1>Actualizacion de Cliente</h1>
		<input type="hidden" name="codigo" value="<%=c.getCod_cliente()%>">
		<form action="cliente" id="id_form">
			<input type="hidden" name="metodo" value="actualiza">
			<div class="form-group">
				<label class="control-label" for="id_razon">Razon Social</label> <input
					class="form-control" id="id_razon" type="text" name="razon"
					placeholder="Ingrese Razon Social" value="<%=c.getRazsoc_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_ruc">RUC</label> <input
					class="form-control" id="id_ruc" type="text" name="ruc"
					placeholder="Ingrese RUC" value="<%=c.getRuc_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_email">E-mail</label> <input
					class="form-control" id="id_email" type="text" name="email"
					placeholder="Ingrese E-mail" value="<%=c.getEmail_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_telefono">Telefono</label> <input
					class="form-control" id="id_telefono" type="text" name="telefono"
					placeholder="Ingrese Telefono" value="<%=c.getTelefono_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_departamento">Departamento</label>
				<input class="form-control" id="id_departamento" type="text"
					name="departamento" placeholder="Ingrese Departamento" value="<%=c.getDepartamento_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_provincia">Provincia</label> <input
					class="form-control" id="id_provincia" type="text" name="provincia"
					placeholder="Ingrese Provincia" value="<%=c.getProvincia_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_distrito">Distrito</label> <input
					class="form-control" id="id_distrito" type="text" name="distrito"
					placeholder="Ingrese Distrito" value="<%=c.getDistrito_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_direccion">Direccion</label> <input
					class="form-control" id="id_direccion" type="text" name="direccion"
					placeholder="Ingrese Direccion" value="<%=c.getDireccion_cliente()%>">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_tipo">Tipo</label> <select
					class="form-control" name="tipo" id="id_tipo">
					<libreria:dameTipoCliente />
				</select>
			</div>
			<div class="form-group">
				<label class="control-label" for="id_representante">Representante</label>
				<input class="form-control" id="id_representante" type="text"
					name="representante" placeholder="Ingrese Representante" value="<%=c.getRepresentante_cliente()%>">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Crea Cliente
				</button>
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